import os
import warnings
import argparse
import datetime
import pathlib
import sys
import matplotlib.pyplot as plt
import argparse
import copy

import torch
import torch.nn as nn
from torch.utils.data import DataLoader
from torch.utils.tensorboard import SummaryWriter

from tqdm import tqdm
import pickle
import torchvision
from test import test
from utils.evaluate_uncertainty import evaluate_uncertainty
from core.config import create_config, save_config
# from core.dataset import COCODataset
from core.dataset_hotswapped import COCODataset
from core.model import Model
from core.metrics import AccuracyLogger
import pickle
from SupContrast.losses import SupConLoss
import torch.nn.functional as F
## Initialization

from torchvision import transforms

from torchvision import datasets

from tqdm import tqdm
from IPython.display import clear_output

from torchvision import models
from torch import optim
import pickle

parser = argparse.ArgumentParser()
parser.add_argument('--save_folder', help='save folder', required=True)
parser.add_argument('--train_data_folder', help='train data folder', required=True)
args = parser.parse_args()

print(args.train_data_folder)

augment_transform = transforms.Compose([
            # transforms.Resize((224,224)),
            transforms.RandomResizedCrop(224, scale=(0.7, 1.0)),
            transforms.RandomHorizontalFlip(),
            transforms.ColorJitter(0.3, 0.3, 0.3, 0.3),
            transforms.RandomGrayscale(),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]),
        ])



BATCH_SIZE = 15

train_data = datasets.ImageFolder(args.train_data_folder, transform = augment_transform)

# '../DomainBed/domainbed/data/DGMaterials/main_xml_50/'

train_loader = torch.utils.data.DataLoader(train_data, batch_size=BATCH_SIZE,
                                               shuffle=True, num_workers=0)

NUM_CLASSES = len(train_data.classes)

criterion = torch.nn.CrossEntropyLoss()

use_gpu = True

def train_model(model, criterion, optimizer, save_path, num_epochs=20):
    best_model = model
    best_acc = 0.0

    for epoch in range(num_epochs):
        print('Epoch {}/{}'.format(epoch, num_epochs - 1))
        print('-' * 10)
        sys.stdout.flush()
        running_loss = 0.0
        running_corrects = 0

        losses = []
        # Iterate over data.
        for data in tqdm(train_loader):
            inputs, labels = data
            inputs = inputs.cuda()
            labels = labels.cuda()

            optimizer.zero_grad()
            outputs = model(inputs)
            _, preds = torch.max(outputs.data, 1)

            loss = criterion(outputs, labels)

            loss.backward()
            optimizer.step()

            running_loss += loss.item()
            losses.append(loss.item())
            running_corrects += torch.sum(preds == labels.data)

        epoch_loss = running_loss
        epoch_acc = running_corrects.item() / float(len(train_loader))
        print('Loss: {:.4f} Acc: {:.4f}'.format(epoch_loss, epoch_acc))
        sys.stdout.flush()

        if epoch_acc > best_acc:
            best_acc = epoch_acc
            best_model = copy.deepcopy(model)

            model_save_path = os.path.join(save_path, 'best_model.p')
            acc_save_path = os.path.join(save_path, 'acc.txt')

            with open(acc_save_path,'w') as F:
                print(best_acc, file=F)

            with open(model_save_path, 'wb') as F:
                print('Saving new best model...')
                pickle.dump(best_model, F)
    return best_model



model_ft = models.resnet18(pretrained=True)
num_ftrs = model_ft.fc.in_features
model_ft.fc = nn.Linear(num_ftrs, NUM_CLASSES)

criterion.cuda()
model_ft.cuda()

optimizer_ft = optim.RMSprop(model_ft.parameters(), lr=0.0001)

model_ft.train();

print(args.train_data_folder)

os.makedirs(args.save_folder, exist_ok = True)

# Run the functions and save the best model in the function model_ft.
model_ft = train_model(model_ft, criterion, optimizer_ft, args.save_folder, num_epochs=20)
