import os

folder = 'slurm_output'
files = [os.path.join(folder, i) for i in os.listdir(folder) if '65585297' in i]


for file in files:
    with open(file,'r') as F:
        contents = F.readlines()
        for line in contents:
            if 'Start to render' in line:
                last_render = line.split(': ')[1].rstrip()
        completed, total = last_render.split('/')
        if completed != total:
            print(file.split('_')[4], last_render)
