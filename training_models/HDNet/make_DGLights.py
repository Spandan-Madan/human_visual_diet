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

annot_file = '../openrooms/annotation_files/train_main_xml_50_lights_v3.json'

image_dir = '../'

material_fols = ["main_xml_50_2"]
batch_size=100

dataset = COCODataset(annot_file, image_dir, (224,224), material_fols, normalize_means=[0.485, 0.456, 0.406], normalize_stds=[0.229, 0.224, 0.225])

dataloader = DataLoader(dataset, batch_size, num_workers=0, shuffle=True, pin_memory=True, drop_last=True)
from PIL import Image

new_data_folder = '../DomainBed/domainbed/data/DGLights_all/'

import json
with open(annot_file,'r') as F:
    annot_contents = json.load(F)

categories = annot_contents['categories']

cat_names = {}
for cat in categories:
    cat_names[int(cat['id'])-1] = cat['name']


light_domain_names = ['main_xml_50_lights','main_xml_50_lights_1','main_xml_50_lights_2','main_xml_50_lights_3','main_xml_50_lights_4']

for data in tqdm(dataloader):
    impath_1, impath_2, bbox, label, annot_idx = data
    for i in range(len(impath_1)):
        impath = impath_1[i]
        for domain_name in light_domain_names:
            new_path = impath.replace('main_xml_50_lights',domain_name)
            if domain_name != 'main_xml_50_lights':
                new_path = new_path.replace('all_openrooms', 'stylized_all_openrooms')
            image = Image.open(new_path)
            image = image.convert("RGB")
            new_im_name = impath.split('/')[-1].replace('.png','_%s.png'%annot_idx[i].item())
            new_save_folder = "%s/%s/%s"%(new_data_folder, domain_name, cat_names[label[i].item()])
            new_save_path = "%s/%s"%(new_save_folder, new_im_name)
            
            os.makedirs(new_save_folder, exist_ok = True)
            xmin, ymin, w, h = bbox[0][i], bbox[1][i], bbox[2][i], bbox[3][i]
            target_image = image.crop((int(xmin), int(ymin), int(xmin + w), int(ymin + h)))
            target_image.save(new_save_path)