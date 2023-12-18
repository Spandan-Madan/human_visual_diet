import pickle
import os
import shutil
from tqdm import tqdm

with open('disjoint_viewpoint_imnames.p','rb') as F:
    chunks = pickle.load(F)
    
for i in range(3,6):
    chunk_save_fol = '../openrooms/stylized_all_openrooms/main_xml_viewpoint_%s/'%i
    chunk = chunks[i]
    for scene_fol in tqdm(chunk.keys()):
        chunk_scene_fol = os.path.join(chunk_save_fol, scene_fol)
        os.makedirs(chunk_scene_fol, exist_ok = True)
        scene_images = chunk[scene_fol]
        for scene_im in scene_images:
            old_path = scene_im
            if 'main_xml1' in scene_im:
                new_path = scene_im.replace('../openrooms/all_openrooms/main_xml1/',chunk_save_fol).replace('.png','_xml1.png')
            else:
                new_path = scene_im.replace('../openrooms/all_openrooms/main_xml/',chunk_save_fol).replace('.png','_xml.png')
            if os.path.isfile(old_path):
                shutil.copyfile(old_path, new_path)
            
                
                