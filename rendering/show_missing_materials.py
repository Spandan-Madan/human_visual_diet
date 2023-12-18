import os
from tqdm import tqdm
import ipdb
import difflib
import pickle

folder = 'scenes/xml/'
mats_folders = ['TileableTextureSynthesis/%s'%i for i in os.listdir('TileableTextureSynthesis') if 'materials_50' in i and 'modified' in i]

unique_mats = []
for mats_folder in mats_folders:
    mats = [i.split('Material__')[1] for i in os.listdir(mats_folder)]
    unique_mats.extend(mats)

with open('available_materials.txt','w') as F:
    for i in unique_mats:
        print(i, file = F)
# print(unique_mats)
# print('-'*35)
all_mats = []
for scene_fol in tqdm(sorted(os.listdir(folder))):
    scene_materials = []
    original_xml = os.path.join(folder, scene_fol, 'main.xml')
    with open(original_xml, 'r') as F:
        content = F.readlines()

    for line in content:
        line = line.rstrip()
        if 'Material__' in line:
            mat_name = line.split('BRDFOriginDataset/')[1].split('/tiled')[0].split('Material__')[1]
            scene_materials.append(mat_name)
    unique_scene_materials = list(set(scene_materials))
    all_mats.extend(unique_scene_materials)
    # print(unique_scene_materials)
    # for i in unique_scene_materials:
    #     print(i)
        # if i in unique_mats:
        #     print('found')
unique_all_mats = list(set(all_mats))

available_materials = unique_mats
original_materials = unique_all_mats

found_pairs = {}
missing_mats = []
for orig_mat in original_materials:
    matches = difflib.get_close_matches(orig_mat, available_materials)
    if len(matches) > 0:
        found_pairs[orig_mat] = matches[0]
    else:
        missing_mats.append(orig_mat)

with open('missing_pairs.txt','r') as F:
    content_pairs = F.readlines()

for line in content_pairs:
    line = line.rstrip()
    part_1,part_2 = line.split(' ')
    found_pairs[part_1] = part_2

with open('paired_materials.p','wb') as F:
    pickle.dump(found_pairs, F)


# with open('missing_materials.txt','w') as F:
#     for i in missing_mats:
#         print(i, file = F)
