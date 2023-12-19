experiment_index=$1
echo $experiment_index

# algorithms=("ERM" "Fish" "IRM" "GroupDRO" "Mixup" "MLDG" "CORAL" "MMD" "DANN" "CDANN" "MTL" "SagNet" "ARM" "VREx" "RSC" "SD" "ANDMask" "SANDMask" "IGA" "SelfReg" "Fishr" "TRM" "IB_ERM" "IB_IRM" "CAD" "CondCAD")

algorithms=("ERM" "Mixup" "IRM" "SANDMask" "SelfReg" "CORAL") 

cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
module load GCC/8.2.0-2.31.1
conda activate domain_adaptation
python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algorithm ${algorithms[$experiment_index]} --dataset iLabViewpoints --test_env 0 --output_dir iLabViewpoints/${algorithms[$experiment_index]} --batch_size 100
