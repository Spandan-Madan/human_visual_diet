import os
fol_names = os.listdir('scenes/xml/')
string = 'scenes=('
for fol in fol_names:
    string += '"%s" '%fol
string += ')'
with open('basharray.txt','w') as F:
    print(string, file=F)
