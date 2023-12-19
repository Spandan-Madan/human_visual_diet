experiment_index=$1
echo $experiment_index

# algorithms=("ERM" "Fish" "IRM" "GroupDRO" "Mixup" "MLDG" "CORAL" "MMD" "DANN" "CDANN" "MTL" "SagNet" "ARM" "VREx" "RSC" "SD" "ANDMask" "SANDMask" "IGA" "SelfReg" "Fishr" "TRM" "IB_ERM" "IB_IRM" "CAD" "CondCAD")

algorithms=("ERM" "Mixup" "IRM" "SANDMask" "SelfReg" "CORAL") 

cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
module load GCC/8.2.0-2.31.1
conda activate domain_adaptation
python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algorithm ${algorithms[$experiment_index]} --dataset iLabMaterials --test_env 0 --output_dir iLabMaterials/${algorithms[$experiment_index]} --batch_size 100
#python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algoritCADm ${algorithms[$experiment_index]} --dataset DGMaterials --test_env 2 3 4 5 --output_dir train_output_extreme/${algorithms[$experiment_index]}
