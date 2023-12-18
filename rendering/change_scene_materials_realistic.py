import os
from tqdm import tqdm
import random
import argparse
import ipdb
import pickle

def listdir(fol):
    return [os.path.join(fol,i) for i in os.listdir(fol)]


parser = argparse.ArgumentParser()
parser.add_argument('--new_file_name',type=str,required=True)
args = parser.parse_args()

with open('paired_materials.p','rb') as F:
    found_pairs = pickle.load(F)
meta_folder = 'scenes/xml/'

scene_folders = listdir(meta_folder)
for scene_folder in tqdm(scene_folders):
    scene_num = int(scene_folder.split('/')[-1].split('_')[-2].split('scene')[1])
    xml_file = os.path.join(scene_folder,'main.xml')
    with open(xml_file,'r') as F:
        xml_lines = F.readlines()
    new_file_path = xml_file.replace('main.xml',args.new_file_name)
    F_new = open(new_file_path,'w')
    all_mats = []
    for line in xml_lines:
        if 'Material__' in line:
            old_material_name = line.split('/')[-4].split('Material__')[1]
            new_material_name = found_pairs[old_material_name]
            new_line = line.replace('../../../../../BRDFOriginDataset/','../../../TileableTextureSynthesis/all_downloaded_materials/').replace(old_material_name, new_material_name)
        else:
            new_line = line
        print(new_line, file = F_new)
    F_new.close()
