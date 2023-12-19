import pickle

import json
import random
from tqdm import tqdm

with open('../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json','r') as F:
    train_annotations = json.load(F)

with open('core/image_paths_to_annots.p','rb') as F:
    image_paths_to_annots = pickle.load(F)

possible_material_folders = []
for im_path in image_paths_to_annots.keys():
    possible_material_folders.append(im_path.split('/')[2])
possible_material_folders = list(set(possible_material_folders))

per_mat_folder_match = {}

all_potential_keys = list(image_paths_to_annots.keys())

for annot_id in tqdm(range(len(train_annotations['annotations']))):
    annot = train_annotations['annotations'][annot_id]
    annot_image = train_annotations['images'][annot['image_id']]['file_name']
    annot_category = annot['category_id']
    
    ##################
    per_mat_folder_match[annot_id] = {} 
    random.shuffle(all_potential_keys)
    for im_path in all_potential_keys:
        if im_path == annot_image:
            continue
        im_material_folder = im_path.split('/')[2]
        if im_material_folder in per_mat_folder_match[annot_id].keys():
            continue
        else:
            im_annots = image_paths_to_annots[im_path]
            random.shuffle(im_annots)
            for im_annot in im_annots:
                if im_annot['category_id'] == annot_category:
                    per_mat_folder_match[annot_id][im_material_folder] = [im_path, im_annot]
    if len(per_mat_folder_match[annot_id].keys()) < 2:
        print(annot_id)
        
with open('core/per_mat_folder_matched_annotations.p','wb') as F:
    pickle.dump(per_mat_folder_match, F)