import os
import warnings
import argparse
import datetime
import pathlib
import sys

import torch
import torch.nn as nn
from torch.utils.data import DataLoader
from torch.utils.tensorboard import SummaryWriter

from tqdm import tqdm
import pickle

from test_lift import test
from utils.evaluate_uncertainty import evaluate_uncertainty
from core.config import create_config, save_config
# from core.dataset import COCODataset
# from core.dataset_hotswapped_flap import COCODataset
from core.dataset_hotswapped_blurred_context import COCODataset
from core.model import Model
from core.metrics import AccuracyLogger
import pickle
from SupContrast.losses import SupConLoss
import torch.nn.functional as F
## Initialization
#

parser = argparse.ArgumentParser()
parser.add_argument("--config", type=str, help="Path to config file. If additional commandline options are provided, they are used to modify the specifications in the config file.")
parser.add_argument("--outdir", type=str, default="output/{date:%Y-%m-%d_%H%M}".format(date=datetime.datetime.now()), help="Path to output folder (will be created if it does not exist).")
parser.add_argument("--checkpoint", type=str, help="Path to model checkpoint from which to continue training.")
parser.add_argument("--annotations", type=str, help="Path to COCO-style annotations file.")
parser.add_argument("--imagedir", type=str, help="Path to images folder w.r.t. which filenames are specified in the annotations.")

parser.add_argument("--test_annotations", type=str, help="Path to COCO-style annotations file for model evaluation.")
parser.add_argument("--test_imagedir", type=str, help="Path to images folder w.r.t. which filenames are specified in the annotations for model evaluation.")
parser.add_argument("--test_frequency", type=int, default=1, help="Evaluate model on test data every __ epochs.")

parser.add_argument("--epochs", type=int, default=1, help="Number of epochs to train.")
parser.add_argument("--save_frequency", type=int, default=1, help="Save model checkpoint every __ epochs.")
parser.add_argument("--print_batch_metrics", action='store_true', default=False, help="Set to print metrics for every batch.")

parser.add_argument("--batch_size", type=int, help="Batchsize to use for training.")
parser.add_argument("--learning_rate", type=float, help="Learning rate to use for training.")
parser.add_argument("--imbalance_reweighting", action='store_true', help="Reweight samples in proportion to the number of samples per class.")
parser.add_argument("--num_decoder_heads", type=int, help="Number of decoder heads.")
parser.add_argument("--num_decoder_layers", type=int, help="Number of decoder layers.")
parser.add_argument("--uncertainty_gate_type", type=str, help="Uncertainty gating mechanism to use. Can be one of: 'entropy', 'relative_softmax_distance', 'learned', 'learned_metric'.")
parser.add_argument("--uncertainty_threshold", type=float, help="Uncertainty threshold for the uncertainty gating module. Note that training does not depend on the threshold, the model can still be used with different thresholds later.")
parser.add_argument("--weighted_prediction", action='store_true', default=None, help="If enabled, the model returns an uncertainty-weighted prediction if the uncertainty_gate prediction exceeds the uncertainty threshold.")
parser.add_argument("--non_contrastive", action="store_true")
parser.add_argument("--num_materials", type=int, default=None)
parser.add_argument("--material_names",type=str, default=None)
# parser.add_argument("--no_target", action="store_true")
# parser.add_argument("--no_context", action="store_true")
parser.add_argument("--empty_baseline", action="store_true")
parser.add_argument("--start_im", default=0,type=int)
parser.add_argument("--blur_strength", default=0,type=int)
parser.add_argument("--target_blur", action="store_true")
parser.add_argument("--context_blur", action="store_true")
args = parser.parse_args()

# with open('args.p','wb') as F:
#     pickle.dump(args,F)
# sys.exit()
# if args.no_target:
#     print('Task is lift the flap, not classification.')
# elif args.no_context:
#     print('Task being run without context.')
# elif args.empty_baseline:
#     print('Task being run is empty baseline')
# else:
#     print('Task is classification, not lift the flap.')
# with open('/n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/args_lift.p','wb') as File:
#     pickle.dump(args, File)
# sys.exit()
# print('Hard mining set to:%s'%(args.hard_mining))

pathlib.Path(args.outdir).mkdir(exist_ok=True, parents=True)

# Load config or create a new one
cfg = create_config(args)
cfg.blur_strength = args.blur_strength
print(cfg.blur_strength)

arbitrary_material_fols = sorted([i for i in os.listdir('../openrooms/') if 'arbitrary' in i])

if args.num_materials is not None and args.material_names is not None:
    print('Cannot provide both num_materials and material_names simultaneously, exiting')
    sys.exit()

if args.blur_strength is not None:
    cfg.blur_strength = args.blur_strength

if args.target_blur is not None:
    cfg.target_blur = args.target_blur

if args.context_blur is not None:
    cfg.context_blur = args.context_blur

if args.empty_baseline is not None:
    cfg.empty_baseline = args.empty_baseline

if args.num_materials is not None:
    if args.num_materials== -1:
        new_materials = arbitrary_material_fols
    else:
        new_materials = arbitrary_material_fols[args.start_im:args.start_im + args.num_materials]

if args.material_names is not None:
    parts_string = args.material_names
    new_materials = parts_string.split(', ')

material_fols = new_materials
print('Using materials: %s'%material_fols)

dataset = COCODataset(cfg.annotations, cfg.imagedir, (224,224), material_fols, normalize_means=[0.485, 0.456, 0.406], normalize_stds=[0.229, 0.224, 0.225],blur_strength=args.blur_strength, context_blur=args.context_blur, target_blur=args.target_blur)
dataloader = DataLoader(dataset, batch_size=cfg.batch_size, num_workers=0, shuffle=True, pin_memory=True, drop_last=True)

NUM_CLASSES = dataset.NUM_CLASSES
cfg.num_classes = NUM_CLASSES
save_config(cfg, args.outdir)
print(cfg)

model = Model.from_config(cfg)

assert(model.TARGET_IMAGE_SIZE == model.CONTEXT_IMAGE_SIZE == dataset.image_size), "Image size from the dataset is not compatible with the encoder."

device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")

optimizer = torch.optim.Adam(model.parameters(), lr=cfg.learning_rate)

if cfg.imbalance_reweighting:
    class_weights = torch.true_divide(dataset.relative_annotation_counts.max(), dataset.relative_annotation_counts)
    criterion = nn.CrossEntropyLoss(weight= class_weights.to(device))
else:
    criterion = nn.CrossEntropyLoss()

criterion_2 = SupConLoss(temperature=0.1)
criterion_3 = torch.nn.MSELoss()
#kl_loss_1 = torch.nn.KLDivLoss()
#kl_loss_2 = torch.nn.KLDivLoss()

# kl_loss_1 = torch.nn.MSELoss()
# kl_loss_2 = torch.nn.MSELoss()

if cfg.checkpoint is not None:
    print("Initializing from checkpoint {}".format(cfg.checkpoint))
    if not os.path.isfile(cfg.checkpoint):
        cfg.checkpoint = os.path.join(args.outdir, cfg.checkpoint)
    checkpoint = torch.load(cfg.checkpoint, map_location="cpu")
    model.load_state_dict(checkpoint['model_state_dict'])
    model.to(device)
    optimizer.load_state_dict(checkpoint['optimizer_state_dict'])
    start_epoch = checkpoint['epoch'] + 1
else:
    print("No checkpoint was passed.")
    model.to(device)
    start_epoch = 1

# Tensorboard
writer = SummaryWriter(log_dir=os.path.join(args.outdir, "runs/{date:%Y-%m-%d_%H%M}".format(date=datetime.datetime.now())))
# context_images = torch.vstack((info_1[0], info_2[0]))
# target_images = torch.vstack((info_1[1], info_2[1]))
# bbox = torch.vstack((info_1[2], info_2[2]))
# labels = torch.hstack((info_1[3], info_2[3]))
context_images, target_images, context_images_2, target_images_2, bbox, labels = iter(dataloader).next()

writer.add_images("context_image_batch", context_images) # add example context image batch to tensorboard log
writer.add_images("target_image_batch", target_images) # add example target image batch to tensorboard log
with warnings.catch_warnings(): # add_graph method is known to issue a warning
    warnings.simplefilter("ignore")
    writer.add_graph(model, input_to_model=[context_images.to(device), target_images.to(device), bbox.to(device)]) # add model graph to tensorboard log

accuracy_logger_main_branch = AccuracyLogger(dataset.idx2label)
accuracy_logger_uncertainty_branch = AccuracyLogger(dataset.idx2label)


## Training
#
def random_permute_rows(x):
    x=x[torch.randperm(x.size()[0])]
    return x

print('below')
print(cfg.blur_strength)

for epoch in range(start_epoch, args.epochs + 1):
    test_accuracy = test(model, cfg.test_annotations, cfg.test_imagedir, args.outdir, cfg, epoch=epoch)
    print('done')
    break