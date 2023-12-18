import os
import random
import pickle
from tqdm import tqdm
import argparse
import colorsys

def listdir(fol):
    return [os.path.join(fol,i) for i in os.listdir(fol)]

def get_random_bracketed_light(light_bracket, ranges, lower_end, upper_end):    
    low_h,high_h = ranges[light_bracket]
    h_val = random.uniform(low_h, high_h)
    s_val = random.uniform(0.4,1)
    v_val = random.uniform(0.4,1)
    r,g,b = colorsys.hsv_to_rgb(h_val,s_val,v_val)
    r_val = lower_end + (upper_end - lower_end) * r
    g_val = lower_end + (upper_end - lower_end) * g
    b_val = lower_end + (upper_end - lower_end) * b
    return r_val, g_val, b_val

parser = argparse.ArgumentParser()
parser.add_argument('--start_num_env_map',type=int,required=True)
parser.add_argument('--end_num_env_map',type=int,required=True)
args = parser.parse_args()


LOWER_END = 15
UPPER_END = 935

RANGES = ((0.1,0.08), (0.15,0.23), (0.3,0.38),(0.45,0.53),(0.6,0.68),(0.75,0.83),(0.89,0.96))

LIGHT_BRACKET = int(args.start_num_env_map/50)


new_file_name = 'main_59_%s_%s_envmaps_%s_light_bracket.xml'%(args.start_num_env_map, args.end_num_env_map, LIGHT_BRACKET)

meta_folder = 'scenes/xml/'
with open('unique_env_names.p','rb') as F:
    unique_env_names = pickle.load(F)

retained_envmaps = unique_env_names[args.start_num_env_map:args.end_num_env_map]

scene_folders = listdir(meta_folder)
for scene_folder in tqdm(scene_folders):
    scene_num = int(scene_folder.split('/')[-1].split('_')[-2].split('scene')[1])
    xml_file = os.path.join(scene_folder,'main_59.xml')
    with open(xml_file,'r') as F:
        contents = F.readlines()
    new_file_path = xml_file.replace('main_59.xml', new_file_name)

    F_new = open(new_file_path,'w')

    for c in contents:
        if '.hdr' in c:
            c = c.rstrip()
            old_env_name = c.split('/')[-2].split('"')[0]
            new_env_name = random.choice(retained_envmaps)
            new_line = c.replace(old_env_name, new_env_name)
            print(new_line, file = F_new)
        elif 'rgb value' in c:
            r_val, g_val, b_val = get_random_bracketed_light(LIGHT_BRACKET, RANGES, LOWER_END, UPPER_END)
            new_line = '<rgb value="%s %s %s"/>'%(r_val, g_val, b_val)
            print(new_line, file = F_new)
        else:
            c = c.rstrip()
            new_line = c
            print(new_line, file = F_new)

    F_new.close()