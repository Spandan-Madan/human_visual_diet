import os

from tqdm import tqdm

total_cams = 0
missing = 0
for scene_fol in tqdm(os.listdir('scenes/xml/')):
    cam_file = os.path.join('scenes/xml/%s/cam_scannet.txt'%scene_fol)
    if os.path.isfile(cam_file):
        with open(cam_file, 'r') as F:
            content = F.readlines()

        total_cams += int(content[0].rstrip())
    else:
        missing += 1
print(total_cams)
print(missing)
