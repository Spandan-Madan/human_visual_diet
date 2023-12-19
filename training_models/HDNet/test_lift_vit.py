import argparse
import datetime
import pathlib
import json
import yaml
import os
import torch
import torch.nn as nn
from torch.utils.data import DataLoader

from tqdm import tqdm
from ml_collections import ConfigDict

from core.dataset_flap import COCODatasetWithID
from core.config import save_config
from core.model import Model
from core.metrics import AccuracyLogger, IndividualScoreLogger
import torchvision
import pickle
import timm

class TwoStreamCNN(nn.Module):
    def __init__(self, num_classes):
        """
        In the constructor we instantiate two nn.Linear modules and assign them as
        member variables.
        """
        super(TwoStreamCNN, self).__init__()
        #resnet_base = torchvision.models.resnet18(pretrained=True)
        #num_final_in = resnet_base.fc.in_features
        #resnet_base.fc = nn.Linear(num_final_in, 20)
        vit_base = timm.create_model('vit_base_patch16_224', pretrained=True)
        vit_base.head = nn.Linear(768, 20)

        self.base = vit_base
        self.linear1 = torch.nn.Linear(20, 20)
        self.linear2 = torch.nn.Linear(20, 20)
        self.linear_flattener = torch.nn.Linear(40, num_classes)
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
        print(x_1.shape)
        print(x_2.shape)
        concatted_feats = torch.hstack((x_1,x_2))
        print(concatted_feats.shape)
        y_pred = self.linear_flattener(concatted_feats)
        return y_pred
    
def test(model, annotations_file, imagedir, outdir, outname="test", epoch=None, record_individual_scores=False, print_batch_metrics=False):
    """
    Arguments:
        epoch: If specified, it is used to include the epoch in the output file name.
    """
    pathlib.Path(outdir).mkdir(exist_ok=True, parents=True)

    device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
    model.to(device)

    testset = COCODatasetWithID(annotations_file, imagedir, (224,224), normalize_means=[0.485, 0.456, 0.406], normalize_stds=[0.229, 0.224, 0.225])
    dataloader = DataLoader(testset, batch_size=cfg.batch_size, num_workers=1, shuffle=False, drop_last=False)
    print("batch size is %s"%cfg.batch_size)
    print("Data Loader lenght is %s"%len(dataloader))
    if print_batch_metrics:
        criterion = nn.CrossEntropyLoss()

    test_accuracy = AccuracyLogger(testset.idx2label)

    if record_individual_scores:
        individual_scores = IndividualScoreLogger(testset.idx2label)

    model.eval() # set eval mode
    with torch.no_grad():
        for i, (context_images, target_images, bbox, labels_cpu, annotation_ids) in enumerate(tqdm(dataloader, desc="Test Batches", leave=True)):
            context_images = context_images.to(device)
            target_images = target_images.to(device)

            if cfg.empty_baseline:
                context_images = torch.zeros((context_images.shape)).to(device)
                target_images = torch.zeros((target_images.shape)).to(device)

            bbox = bbox.to(device)
            labels = labels_cpu.to(device) # keep a copy of labels on cpu to avoid unnecessary transfer back to cpu later

            if cfg.no_target:
                target_images = torch.zeros((target_images.shape)).to(device)
            if cfg.no_context:
                context_images = torch.zeros((context_images.shape)).to(device)

            output = model(context_images, target_images) # output is (batchsize, num_classes) tensor of logits
            _, predictions = torch.max(output.detach().to("cpu"), 1) # choose idx with maximum score as prediction
            test_accuracy.update(predictions, labels_cpu)

            if record_individual_scores:
                individual_scores.update(predictions.to("cpu"), labels_cpu, annotation_ids)

            # print
            if print_batch_metrics:
                batch_loss = criterion(output, labels).item()
                batch_corr = sum(predictions == labels_cpu) # number of correct predictions
                batch_accuracy = batch_corr # / batch_size # since batchsize is 1

                print("\t Test Batch {}: \t Loss: {} \t Accuracy: {}".format(i, batch_loss, batch_accuracy))

    print("\nTotal Test Accuracy: {}".format(test_accuracy.accuracy()))
    print("{0:20} {1:10}".format("Class", "Accuracy")) # header
    for name, acc in test_accuracy.named_class_accuarcies().items():
        print("{0:20} {1:10.4f}".format(name, acc))

    # save accuracies
    if epoch is not None:
        test_accuracy.save(outdir, name="{}_accuracies_epoch_{}".format(outname, epoch))
    else:
        test_accuracy.save(outdir, name="{}_accuracies".format(outname))

    if record_individual_scores:
        individual_scores.save(outdir, name="{}_individual_scores".format(outname))

    return test_accuracy


if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("--checkpoint", type=str, help="Path to model checkpoint.")
    parser.add_argument("--config", type=str, help="Path to config file. If other commmand line arguments are passed in addition to a config, they are used to replace parameters specified in the config.")
    parser.add_argument("--outdir", type=str, default="evaluation/{date:%Y-%m-%d_%H%M}".format(date=datetime.datetime.now()), help="Path to output folder (will be created if it does not exist).")
    parser.add_argument("--outname", type=str, default="test", help="Name used for the output file: outname_accuracies.json, outname_individual_scores.json")

    parser.add_argument("--annotations", type=str, help="Path to COCO-style annotations file.")
    parser.add_argument("--imagedir", type=str, help="Path to images folder w.r.t. which filenames are specified in the annotations.")
    parser.add_argument("--uncertainty_threshold", type=float, help="Uncertainty threshold for the uncertainty gating module.")
    parser.add_argument("--uncertainty_gate_type", type=str, help="Uncertainty gate type to use.")
    parser.add_argument("--weighted_prediction", action='store_true', dest='weighted_prediction', help="If set, the model outputs a weighted prediction if the uncertainty gate prediction exceeds the uncertainty threshold.")
    parser.add_argument("--unweighted_prediction", action='store_false', dest='weighted_prediction', help="If set, the model outputs unweighted predictions.")
    parser.set_defaults(weighted_prediction=None)

    parser.add_argument("--record_individual_scores", action='store_true', default=False, help="If set, will log for each individual annotion how it was predicted and if the prediction was correct")
    parser.add_argument("--print_batch_metrics", action='store_true', default=False, help="Set to print metrics for every batch.")
    parser.add_argument("--batch_size", default=1,type=int)
    parser.add_argument("--no_target", action='store_true')
    parser.add_argument("--empty_baseline", action='store_true')
    parser.add_argument("--no_context", action="store_true")
    args = parser.parse_args()

    #with open('args_test.p','wb') as F:
    #    pickle.dump(args, F)
    assert(args.checkpoint is not None), "A checkpoint needs to be specified via commandline argument (--checkpoint)"
    assert(args.config is not None), "A config needs to be specified via commandline argument (--config)"
    if not os.path.isdir(args.config):
        args.config = os.path.join(args.outdir,args.config)
    with open(args.config) as f:
        cfg = ConfigDict(yaml.load(f, Loader=yaml.Loader))

    cfg.checkpoint = args.checkpoint

    if args.annotations is not None:
        cfg.test_annotations = args.annotations
    if args.imagedir is not None:
        cfg.test_imagedir = args.imagedir
    if args.uncertainty_threshold is not None:
        cfg.uncertainty_threshold = args.uncertainty_threshold
    if args.uncertainty_gate_type is not None:
        cfg.uncertainty_gate_type = args.uncertainty_gate_type
    if args.weighted_prediction is not None:
        cfg.weighted_prediction = args.weighted_prediction
    if args.batch_size is not None:
        cfg.batch_size = args.batch_size
    if args.no_target is not None:
        cfg.no_target = args.no_target
    if args.no_context is not None:
        cfg.no_context = args.no_context
    if args.empty_baseline is not None:
        print('Warning: You are running the empty baseline, so network is being fed an input of just zeros.')
        cfg.empty_baseline = args.empty_baseline

    assert(cfg.test_annotations is not None), "Annotations need to be specified either via commandline argument (--annotations) or config (test_annotations)."
    assert(cfg.test_imagedir is not None), "Imagedir needs to be specified either via commandline argument (--imagedir) or config (test_imagedir)."

    if not hasattr(cfg, "num_classes"): # infer number of classes
        with open(cfg.annotations) as f:
            NUM_CLASSES = len(json.load(f)["categories"])
        cfg.num_classes = NUM_CLASSES

    pathlib.Path(args.outdir).mkdir(exist_ok=True, parents=True)
    save_config(cfg, args.outdir, "config_%s.yaml"%args.outname)
    print(cfg)

    print("Initializing model from checkpoint {}".format(args.checkpoint))
    if not os.path.isdir(args.checkpoint):
        args.checkpoint = os.path.join(args.outdir, args.checkpoint)
    checkpoint = torch.load(args.checkpoint, map_location="cpu")
    model = TwoStreamCNN(13)
#     model = Model.from_config(cfg)
    model.load_state_dict(checkpoint['model_state_dict'], strict=False)
#     missing_keys, unexpected_keys = model.load_state_dict(checkpoint['model_state_dict'], strict=False)

#     assert not missing_keys, "Checkpoint is missing keys required to initialize the model: {}".format(missing_keys)
#     if len(unexpected_keys):
#         print("Checkpoint contains unexpected keys that were not used to initialize the model: ")
#         print(unexpected_keys)

    model.to(torch.device("cuda:0" if torch.cuda.is_available() else "cpu"))

    test(model, cfg.test_annotations, cfg.test_imagedir, args.outdir, outname=args.outname, record_individual_scores=args.record_individual_scores , print_batch_metrics=args.print_batch_metrics)
