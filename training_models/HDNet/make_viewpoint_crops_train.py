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
from core.dataset_hotswapped_crop_save import COCODataset
from core.model import Model
from core.metrics import AccuracyLogger
import pickle
from SupContrast.losses import SupConLoss
import torch.nn.functional as F
## Initialization

from tqdm import tqdm

import matplotlib.pyplot as plt

annot_file = "../openrooms/annotation_files/train_main_xml_v3.json"
# annot_file = '../openrooms/annotation_files/train_main_xml_50_v3.json'
# annot_file = '../openrooms/annotation_files/train_main_xml_50_test_v3.json'

image_dir = '../'

material_fols = ["main_xml_50_2"]
batch_size=15

dataset = COCODataset(annot_file, image_dir, (224,224), material_fols, normalize_means=[0.485, 0.456, 0.406], normalize_stds=[0.229, 0.224, 0.225])

dataloader = DataLoader(dataset, batch_size, num_workers=0, shuffle=True, pin_memory=True, drop_last=True)
from PIL import Image

new_data_folder = '../DomainBed/domainbed/data/DGViewpoints_crops/'

import json
with open(annot_file,'r') as F:
    annot_contents = json.load(F)

categories = annot_contents['categories']

cat_names = {}
for cat in categories:
    cat_names[int(cat['id'])-1] = cat['name']

with open('file_name_to_chunk.p','rb') as F:
    file_name_to_chunk = pickle.load(F)

# train_file_names = chunk_to_file_names_train_test['train']
# test_file_names = chunk_to_file_names_train_test['test']

failed_images = []
for data in tqdm(dataloader):
    impath_1, impath_2, bbox, label, annot_idx = data
    for i in range(len(impath_1)):
        imname = impath_1[i]
        # print(imname)
        if imname in file_name_to_chunk.keys():
            chunk_num = file_name_to_chunk[imname]
        else:
            print(imname)
            failed_images.append(imname)
            continue
        image = Image.open(impath_1[i])
        image = image.convert("RGB")
        new_im_name = imname.split('/')[-1].replace('.png','_%s.png'%annot_idx[i].item())
        new_save_folder = "%s/main_xml_50_viewpoints_%s/%s"%(new_data_folder, chunk_num,cat_names[label[i].item()])
        os.makedirs(new_save_folder, exist_ok = True)
        new_save_path = "%s/%s"%(new_save_folder, new_im_name)
        xmin, ymin, w, h = bbox[0][i], bbox[1][i], bbox[2][i], bbox[3][i]
        target_image = image.crop((int(xmin), int(ymin), int(xmin + w), int(ymin + h)))
        target_image.save(new_save_path)

print(len(failed_images))
with open('failed_viewpoint_crops_train.p','wb') as F:
    pickle.dump(failed_images, F)
