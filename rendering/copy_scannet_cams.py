import os
from tqdm import tqdm

scannet_fol = '../scannet/scans/'
openrooms_scenes = 'scenes/xml/'

for scene_fol in tqdm(sorted(os.listdir(openrooms_scenes))):
    # scene_ims = 0
    scannet_cam_file = '%s/%s/cam.txt'%(scannet_fol, scene_fol)
    new_cam_file = '%s/%s/cam_scannet.txt'%(openrooms_scenes, scene_fol)

    if not os.path.isfile(scannet_cam_file):
        continue
    else:

        with open(scannet_cam_file,'r') as F:
            content = F.readlines()

        F = open(new_cam_file,'w')

        cam_lines = content[1:]
        num_cams = int(content[0].rstrip())
        print(int(num_cams/100), file = F)

        for i in range(0,num_cams,100):
            cam_line_0 = cam_lines[3*i].rstrip()
            cam_line_1 = cam_lines[3*i + 1].rstrip()
            cam_line_2 = cam_lines[3*i + 2].rstrip()
            print(cam_line_0, file = F)
            print(cam_line_1, file = F)
            print(cam_line_2, file = F)
            # scene_ims += 1
            # if scene_ims == 20:
            #     break


        F.close()
