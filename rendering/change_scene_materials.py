import os
from tqdm import tqdm
import random
import argparse


def listdir(fol):
    return [os.path.join(fol,i) for i in os.listdir(fol)]


parser = argparse.ArgumentParser()
parser.add_argument('--materials_folder',type=str,required=True)
parser.add_argument('--new_file_name',type=str,required=True)
args = parser.parse_args()

meta_folder = 'scenes/xml/'
materials_folder = args.materials_folder

# materials_folder = 'TileableTextureSynthesis/materials_50_modified'

new_possible_mats = os.listdir(materials_folder)

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
            old_material_name = line.split('/')[-4]
            all_mats.append(old_material_name)

    break_pts = []
    for i in range(1,len(all_mats)):
        if all_mats[i] != all_mats[i-1]:
            break_pts.append(i-1)

    num_unique_mats = len(break_pts)
    print('unique mats: %s'%num_unique_mats)
    if num_unique_mats+1 < len(new_possible_mats):
        random_chosen_mats = random.sample(new_possible_mats, num_unique_mats+1)
    else:
        random_chosen_mats = random.choices(new_possible_mats, k=num_unique_mats+1)
    random_mat_ct = 0
    new_mats = []
    print(len(random_chosen_mats))
    print(len(break_pts))
    for i in range(len(all_mats)):
        new_mats.append(random_chosen_mats[random_mat_ct])
        # print(all_mats[i],new_mats[i])
        if i in break_pts:
            random_mat_ct += 1

    mat_count = 0
    for line in xml_lines:
        if 'Material__' in line:
            new_line = line.replace('../../../../../BRDFOriginDataset/','../../../%s'%args.materials_folder).replace(all_mats[mat_count],new_mats[mat_count])
            mat_count += 1
        else:
            new_line = line
        print(new_line.rstrip(),file=F_new)

    F_new.close()
