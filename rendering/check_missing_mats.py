import os
from tqdm import tqdm
import pickle

error_mats = []
for scene_fol in tqdm(os.listdir('scenes/xml/')):
    cam_file = os.path.join('scenes/xml/', scene_fol, 'main_realistic.xml')
    with open(cam_file,'r') as F:
        content = F.readlines()

    for line in content:
        if 'Material__' in line:
            line = line.rstrip()
            mat = 'Material__' + line.split('Material__')[1].split('/tiled')[0]
            mat_fol = 'TileableTextureSynthesis/all_downloaded_materials/' + mat
            if not os.path.isdir(mat_fol):
                error_mats.append(mat_fol)


with open('paired_materials.p','rb') as F:
    found_pairs = pickle.load(F)


unique_error_mats = list(set(error_mats))

# no_pair = 0
# for un in unique_error_mats:
#     if not un in found_pairs.keys():
#         no_pair += 1
print(len(error_mats))
for un in unique_error_mats:
    print(un.split('/')[-1].split('Material__')[1])
