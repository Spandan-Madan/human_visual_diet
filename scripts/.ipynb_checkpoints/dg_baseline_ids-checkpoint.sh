experiment_index=$1
echo $experiment_index

# algorithms=("ERM" "Fish" "IRM" "GroupDRO" "Mixup" "MLDG" "CORAL" "MMD" "DANN" "CDANN" "MTL" "SagNet" "ARM" "VREx" "RSC" "SD" "ANDMask" "SANDMask" "IGA" "SelfReg" "Fishr" "TRM" "IB_ERM" "IB_IRM" "CAD" "CondCAD")

#algorithms=("ERM" "IRM" "Mixup" "MLDG" "CORAL" "MTL" "SagNet" "RSC" "SANDMask" "SelfReg" "TRM" "CondCAD")

algorithms=("ERM" "Mixup" "IRM")

cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
conda activate domain_adaptation
python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algorithm ${algorithms[$experiment_index]} --dataset DGMaterials --test_env 1 --output_dir train_output_small_long/${algorithms[$experiment_index]}
