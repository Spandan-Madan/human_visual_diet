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

from test import test
from utils.evaluate_uncertainty import evaluate_uncertainty
from core.config import create_config, save_config
# from core.dataset import COCODataset
from core.dataset_hotswapped_viewpoint import COCODataset
from core.model import Model
from core.metrics import AccuracyLogger
import pickle
from SupContrast.losses import SupConLoss
import torch.nn.functional as F
import torchvision
import timm
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
parser.add_argument("--hard_mining", default = 'both', type=str)
parser.add_argument("--num_materials", type=int, default=None)
parser.add_argument("--material_names",type=str, default=None)
parser.add_argument("--lift_the_flap", action="store_true")
parser.add_argument("--no_context", action="store_true")
parser.add_argument("--empty_baseline", action="store_true")
parser.add_argument("--blur_target", default=0,type=int)
parser.add_argument("--blur_context", default=0, type=int)
parser.add_argument("--cnn_baseline",action="store_true")
parser.add_argument("--vit_baseline",action="store_true")
parser.add_argument("--start_im", default=0,type=int)
args = parser.parse_args()



class TwoStreamCNN(nn.Module):
    def __init__(self, num_classes,vit):
        """
        In the constructor we instantiate two nn.Linear modules and assign them as
        member variables.
        """
        super(TwoStreamCNN, self).__init__()

        if vit:
            print("Constructing two stream ViT")
            vit_base = timm.create_model('vit_base_patch16_224', pretrained=True)
            vit_base.head = nn.Linear(768, 1000)
            self.base = vit_base
            self.linear_flattener = torch.nn.Linear(2000, num_classes)
            self.ReLU_1 = nn.ReLU()
            self.ReLU_2 = nn.ReLU()
        else:
            print("Constructing two stream ResNet")
            resnet_base = torchvision.models.resnet18(pretrained=True)
            num_final_in = resnet_base.fc.in_features
            resnet_base.fc = nn.Linear(num_final_in, 1000)
            self.base = resnet_base
            self.linear_flattener = torch.nn.Linear(2000, num_classes)
            self.ReLU_1 = nn.ReLU()
            self.ReLU_2 = nn.ReLU()
        

    def forward(self, target, context):
        """
        In the forward function we accept a Tensor of input data and we must return
        a Tensor of output data. We can use Modules defined in the constructor as
        well as arbitrary operators on Tensors.
        """
        x_1 = self.ReLU_1(self.base(target))
        x_2 = self.ReLU_2(self.base(context))
        # print(x_1.shape)
        # print(x_2.shape)
        concatted_feats = torch.hstack((x_1,x_2))
        # print(concatted_feats.shape)
        y_pred = self.linear_flattener(concatted_feats)
        return y_pred



# with open('args.p','wb') as F:
#     pickle.dump(args,F)
# sys.exit()
if args.lift_the_flap:
    print('Task is lift the flap, not classification.')
elif args.no_context:
    print('Task being run without context.')
elif args.empty_baseline:
    print('Task being run is empty baseline')
else:
    print('Task is classification, not lift the flap.')
# with open('args_hotswapped.p','wb') as File:
#     pickle.dump(args, File)
print('Hard mining set to:%s'%(args.hard_mining))
pathlib.Path(args.outdir).mkdir(exist_ok=True, parents=True)

# Load config or create a new one
cfg = create_config(args)

arbitrary_material_fols = sorted([i for i in os.listdir('../openrooms/') if 'arbitrary' in i])

if args.num_materials is not None and args.material_names is not None:
    print('Cannot provide both num_materials and material_names simultaneously, exiting')
    sys.exit()
# if args.lift_the_flap and args.no_context:
#     print('Cannot do lift the flap and no context together, exiting')
#     sys.exit()

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

dataset = COCODataset(cfg.annotations, cfg.imagedir, (224,224), material_fols, normalize_means=[0.485, 0.456, 0.406], normalize_stds=[0.229, 0.224, 0.225])
dataloader = DataLoader(dataset, batch_size=cfg.batch_size, num_workers=0, shuffle=True, pin_memory=True, drop_last=True)

NUM_CLASSES = dataset.NUM_CLASSES
cfg.num_classes = NUM_CLASSES
save_config(cfg, args.outdir)
print(cfg)

if args.cnn_baseline:
    model = TwoStreamCNN(NUM_CLASSES,args.vit_baseline)
    print('Loading two stream CNN baseline.')
else:
    model = Model.from_config(cfg)
    assert(model.TARGET_IMAGE_SIZE == model.CONTEXT_IMAGE_SIZE == dataset.image_size), "Image size from the dataset is not compatible with the encoder."


# model = Model.from_config(cfg)
# assert(model.TARGET_IMAGE_SIZE == model.CONTEXT_IMAGE_SIZE == dataset.image_size), "Image size from the dataset is not compatible with the encoder."

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

if cfg.checkpoint == 'last':
        print('Searching for last checkpoint...')
        existing_checkpoint_files = [i for i in os.listdir(args.outdir) if 'checkpoint' in i]
        if len(existing_checkpoint_files) != 0:
            last_checkpoint = sorted(existing_checkpoint_files)[-1]
            cfg.checkpoint = os.path.join(args.outdir, last_checkpoint)
            print('Found last checkpoint: %s'%last_checkpoint)
        else:
            print('No checkpoints found, starting from scratch...')
            cfg.checkpoint = None

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
context_images, target_images, context_images_2, target_images_2, bbox, labels, bbox_2, labels_2 = next(iter(dataloader))

writer.add_images("context_image_batch", context_images) # add example context image batch to tensorboard log
writer.add_images("target_image_batch", target_images) # add example target image batch to tensorboard log
with warnings.catch_warnings(): # add_graph method is known to issue a warning
    warnings.simplefilter("ignore")
    if not args.cnn_baseline:
        writer.add_graph(model, input_to_model=[context_images.to(device), target_images.to(device), bbox.to(device)]) # add model graph to tensorboard log
    else:
        writer.add_graph(model, input_to_model=[context_images.to(device), target_images.to(device)]) # add model graph to tensorboard log

    # writer.add_graph(model, input_to_model=[context_images.to(device), target_images.to(device), bbox.to(device)]) # add model graph to tensorboard log

accuracy_logger_main_branch = AccuracyLogger(dataset.idx2label)
accuracy_logger_uncertainty_branch = AccuracyLogger(dataset.idx2label)


## Training
#
def random_permute_rows(x):
    x=x[torch.randperm(x.size()[0])]
    return x

for epoch in range(start_epoch, args.epochs + 1):
    print('Starting epoch: %s'%epoch,flush=True)
    model.train() # set train mode
    accuracy_logger_main_branch.reset() # reset accuracy logger every epoch
    accuracy_logger_uncertainty_branch.reset()

    for i, (context_images, target_images, context_images_2, target_images_2, bbox, labels_cpu, bbox_2, labels_cpu_2) in enumerate(dataloader):
        if i%100==0:
            print("batch num:%s"%i)
        # info_1, info_2 = data
#         context_images = torch.vstack((info_1[0], info_2[0]))
#         target_images = torch.vstack((info_1[1], info_2[1]))
#         bbox = torch.vstack((info_1[2], info_2[2]))
#         labels_cpu = torch.hstack((info_1[3], info_2[3]))

        context_images = context_images.to(device)
        target_images = target_images.to(device)
        context_images_2 = context_images_2.to(device)
        target_images_2 = target_images_2.to(device)

        if args.blur_target != 0:
            ks = args.blur_target
            blur_transform = torchvision.transforms.GaussianBlur(kernel_size=ks, sigma=(1*int(ks/3), 5*int(ks/3)))
            target_images = blur_transform(target_images)
            target_images_2 = blur_transform(target_images_2)

        if args.blur_context != 0:
            ks = args.blur_context
            blur_transform = torchvision.transforms.GaussianBlur(kernel_size=ks, sigma=(1*int(ks/3), 5*int(ks/3)))
            context_images = blur_transform(context_images)
            context_images_2 = blur_transform(context_images_2)

        # if args.lift_the_flap:
        #     print('Setting targets to 0.')
        #     target_images = torch.zeros((target_images.shape)).to(device)
        #     target_images_2 = torch.zeros((target_images_2.shape)).to(device)
        # if args.no_context:
        #     print('Setting context to 0.')
        #     context_images = torch.zeros((context_images.shape)).to(device)
        #     context_images_2 = torch.zeros((context_images_2.shape)).to(device)
        # if args.empty_baseline:
        #     print('Setting everything to 0.')
        #     target_images = torch.zeros((target_images.shape)).to(device)
        #     target_images_2 = torch.zeros((target_images_2.shape)).to(device)
        #     context_images = torch.zeros((context_images.shape)).to(device)
        #     context_images_2 = torch.zeros((context_images_2.shape)).to(device)

        bbox = bbox.to(device)
        labels = labels_cpu.to(device)
        bbox_2 = bbox_2.to(device)
        labels_2 = labels_cpu_2.to(device)


        context_images_all = torch.cat([context_images, context_images_2], dim=0)
        target_images_all = torch.cat([target_images, target_images_2], dim=0)
        bbox_all = torch.cat([bbox, bbox_2], dim=0)
        labels_all = torch.cat([labels, labels_2], dim=0)
        labels_all_cpu = torch.cat([labels_cpu, labels_cpu], dim=0)

        if args.cnn_baseline:
            output_main_branch = model(context_images_all, target_images_all)
        else: 
            output_uncertainty_branch , output_main_branch, output_weighted, uncertainty = model(context_images_all, target_images_all, bbox_all)
        # output_uncertainty_branch , output_main_branch, output_weighted, uncertainty = model(context_images_all, target_images_all, bbox_all)

        f1, f2 = torch.split(output_main_branch, [args.batch_size, args.batch_size], dim=0)
        features = torch.cat([f1.unsqueeze(1), f2.unsqueeze(1)], dim=1)
        normalized_features = F.normalize(features, dim = 2)

        # backpropagation through both branches
        optimizer.zero_grad(set_to_none=True)

        if not args.cnn_baseline:
            if cfg.uncertainty_gate_type == "learned" or cfg.uncertainty_gate_type == "learned_metric":
                loss_uncertainty_estimator = criterion(output_weighted, labels_all)
                loss_uncertainty_estimator.backward(retain_graph=True)

            loss_uncertainty_branch = criterion(output_uncertainty_branch, labels_all)
            loss_uncertainty_branch.backward(retain_graph=True)

        loss_main_branch = criterion(output_main_branch, labels_all)

        if args.hard_mining == 'both':
            loss_contrastive = criterion_2(normalized_features, labels)
            overall_main_loss = loss_main_branch + 0.5*loss_contrastive
        elif args.hard_mining == 'none':
            overall_main_loss = loss_main_branch

        overall_main_loss.backward()
        print('overall:',overall_main_loss,flush=True)
        optimizer.step()
        # log metrics
        if not args.cnn_baseline:
            _, predictions_uncertainty_branch = torch.max(output_uncertainty_branch.detach().to("cpu"), 1) # choose idx with maximum score as prediction
            batch_accuracy_uncertainty_branch = sum(predictions_uncertainty_branch == labels_all_cpu) / cfg.batch_size
            batch_loss_uncertainty_branch = loss_uncertainty_branch.item()
            writer.add_scalar("Batch Accuracy Uncertainty Branch/train", batch_accuracy_uncertainty_branch, i + (epoch - 1) * len(dataloader))
            writer.add_scalar("Batch Loss Uncertainty Branch/train", batch_loss_uncertainty_branch, i + (epoch - 1) * len(dataloader))
            accuracy_logger_uncertainty_branch.update(predictions_uncertainty_branch, labels_all_cpu)

        _, predictions_main_branch = torch.max(output_main_branch.detach().to("cpu"), 1) # choose idx with maximum score as prediction
        batch_accuracy_main_branch = sum(predictions_main_branch == labels_all_cpu) / cfg.batch_size
        batch_loss_main_branch = loss_main_branch.item()
        writer.add_scalar("Batch Accuracy Main Branch/train", batch_accuracy_main_branch, i + (epoch - 1) * len(dataloader))
        writer.add_scalar("Batch Loss Main Branch/train", batch_loss_main_branch, i + (epoch - 1) * len(dataloader))
        accuracy_logger_main_branch.update(predictions_main_branch, labels_all_cpu)
        if not args.cnn_baseline:
            writer.add_scalar("Batch Uncertainty/train", torch.mean(uncertainty), i + (epoch - 1) * len(dataloader))

        if args.print_batch_metrics:
            print("\t Epoch {}, Batch {}: \t Loss: {} \t Accuracy: {}".format(epoch, i, batch_loss_main_branch, batch_accuracy_main_branch))


    # log metrics
    writer.add_scalar("Total Accuracy Main Branch/train", accuracy_logger_main_branch.accuracy(), epoch * len(dataloader))
    if not args.cnn_baseline:
        writer.add_scalar("Total Accuracy Uncertainty Branch/train", accuracy_logger_uncertainty_branch.accuracy(), epoch * len(dataloader))

    print("\nEpoch {}, Train Accuracy: {}".format(epoch, accuracy_logger_main_branch.accuracy()))
    print("{0:20} {1:10}".format("Class", "Accuracy")) # header
    for name, acc in accuracy_logger_main_branch.named_class_accuarcies().items():
        writer.add_scalar("Class Accuracies Main Branch/train/{}".format(name), acc, epoch * len(dataloader))
        print("{0:20} {1:10.4f}".format(name, acc))

    if not args.cnn_baseline:
        for name, acc in accuracy_logger_uncertainty_branch.named_class_accuarcies().items():
            writer.add_scalar("Class Accuracies Uncertainty Branch/train/{}".format(name), acc, epoch * len(dataloader))

    # save checkpoint and training accuracies
    if epoch % args.save_frequency == 0:
        torch.save({'epoch': epoch, 'model_state_dict': model.state_dict(), 'optimizer_state_dict': optimizer.state_dict()}, args.outdir + "/checkpoint_{}.tar".format(epoch))
        print("Checkpoint saved.")

        accuracy_logger_main_branch.save(args.outdir, name="train_accuracies_epoch_{}".format(epoch))
        if not args.cnn_baseline:
            accuracy_logger_uncertainty_branch.save(args.outdir, name="train_accuracies_uncertainty_branch_epoch_{}".format(epoch))

    # evaluation on test data
    if cfg.test_annotations is not None and cfg.test_imagedir is not None and epoch % args.test_frequency == 0:
        print("Starting evaluation on test data.")
        test_accuracy = test(model, cfg.test_annotations, cfg.test_imagedir, outdir=args.outdir, epoch=epoch)

        writer.add_scalar("Total Accuracy/test", test_accuracy.accuracy(), epoch * len(dataloader))
        for name, acc in test_accuracy.named_class_accuarcies().items():
            writer.add_scalar("Class Accuracies/test/{}".format(name), acc, epoch * len(dataloader))

        print("Starting uncertainty evaluation.")
        test_uncertainty_log = evaluate_uncertainty(model, cfg.test_annotations, cfg.test_imagedir)
        writer.add_figure("Uncertainty Threshold Curve", test_uncertainty_log.plot_accuracy_vs_threshold(), epoch * len(dataloader))

        if (args.epochs - epoch) / args.test_frequency < 1: # last evaluation
            writer.add_hparams({"learning_rate": cfg.learning_rate, "num_decoder_layers": cfg.num_decoder_layers, "num_decoder_heads": cfg.num_decoder_heads,
                                "uncertainty_gate_type": cfg.uncertainty_gate_type, "uncertainty_threshold": cfg.uncertainty_threshold, "imbalance_reweighting": str(cfg.imbalance_reweighting)},
                                metric_dict={"hparam/accuracy": test_accuracy.accuracy()})

writer.close()
