import os

def listdir(folder):
    return [os.path.join(folder,i) for i in sorted(os.listdir(folder))]

def add_materials(original_file, new_file):
    v_chunk = []
    f_chunk = []

    with open(new_file,'r') as F:
        nc = F.readlines()


    for line in nc:
        if line.startswith('v'):
            v_chunk.append(line.rstrip())
        elif line.startswith('f'):
            f_chunk.append(line.rstrip())


    with open(original_file,'r') as F:
        oc = F.readlines()

    mtl_positions = {}
    f_counter = 0
    for line in oc:
        line = line.rstrip()
        if line.startswith('f'):
            f_counter += 1
        if line.startswith('use'):
            mtl_positions[f_counter] = line

    new_file_with_mat = new_file.replace('.obj','_with_mat.obj')

    F = open(new_file_with_mat,'w')

    for line in v_chunk:
        print(line,file=F)

    f_counter = 0

    for line in f_chunk:
        if f_counter in mtl_positions.keys():
            print(mtl_positions[f_counter], file=F)
        print(line,file=F)
        f_counter += 1

    F.close()

meta_folder = "../../uv_mapped/"
for sub_fol in listdir(meta_folder):
    if sub_fol.split('/')[-1] not in ['curtain','door','window','ceiling_lamp']:
        for instance in listdir(sub_fol):
            print(instance)
            original_file = os.path.join(instance, 'alignedNew.obj')
            new_file = os.path.join(instance, 'alignedNew_deformed.obj')
            add_materials(original_file, new_file)
