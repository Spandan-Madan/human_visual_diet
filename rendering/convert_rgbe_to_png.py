import numpy as np
import os
from PIL import Image
import cv2
from tqdm import tqdm
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--meta_folder', type=str, required=True)
args = parser.parse_args()

def listdir(fol):
    return [os.path.join(fol,i) for i in os.listdir(fol)]

meta_folder = args.meta_folder
scene_folders = listdir(meta_folder)

for scene_folder in tqdm(scene_folders):
    print(scene_folder, flush = True)
    image_paths = [i for i in listdir(scene_folder) if i.endswith('rgbe')]
    print(len(image_paths), flush=True)

    #if len(image_paths) == 0:
    #    image_paths = [i for i in listdir(scene_folder) if i.endswith('hdr')]
    for impath in image_paths:
        im = cv2.imread(impath, -1)[:,:,::-1]
        im = im/np.mean(im) * 0.15
        im = np.clip(im, 0, 1) ** (1.0/1.8)
        im = (im*255).astype(np.uint8)
        new_path = impath.replace('rgbe','png')
        cv2.imwrite(new_path, im[:,:,::-1])
