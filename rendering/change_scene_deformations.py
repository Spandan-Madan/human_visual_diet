import os
import random
import pickle
from tqdm import tqdm
import argparse

def listdir(fol):
    return [os.path.join(fol,i) for i in os.listdir(fol)]

new_file_name = 'main_59_deformed.xml'
meta_folder = 'scenes/xml/'

scene_folders = listdir(meta_folder)
for scene_folder in tqdm(scene_folders):
    print(scene_folder)
    scene_num = int(scene_folder.split('/')[-1].split('_')[-2].split('scene')[1])
    xml_file = os.path.join(scene_folder,'main_59.xml')
    with open(xml_file,'r') as F:
        contents = F.readlines()
    new_file_path = xml_file.replace('main_59.xml', new_file_name)

    F_new = open(new_file_path,'w')

    for c in contents:
        c = c.rstrip()
        new_line = c
        if '.obj' in c:
            if 'window' not in c:
                if 'door' not in c:
                    if 'curtain' not in c:
                        if 'ceiling_lamp' not in c:
                            new_line = c.replace('alignedNew.obj','alignedNew_deformed_with_mat.obj')
        print(new_line, file = F_new)
    F_new.close()
