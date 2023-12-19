experiment_index=$1
echo $experiment_index

algorithms=("ERM" "IRM" "GroupDRO" "CORAL" "MMD" "MTL" "SagNet" "VREx" "ANDMask" "IGA" "SelfReg" "CAD")

cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
module load GCC/8.2.0-2.31.1
conda activate domain_adaptation
python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algorithm ${algorithms[$experiment_index]} --dataset DGLights --test_env 1 2 3 4 5 --output_dir LIGHTS_SINGLE/${algorithms[$experiment_index]} --holdout_fraction 0.01 --hparams_seed 24596 --batch_size 100 
