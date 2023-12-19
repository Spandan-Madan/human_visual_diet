experiment_index=$1
echo $experiment_index

algorithms=("ERM" "IRM" "GroupDRO" "CORAL" "MMD" "MTL" "SagNet" "VREx" "ANDMask" "IGA" "SelfReg" "CAD")

cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
conda activate python_env1
python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algorithm ${algorithms[$experiment_index]} --dataset DGViewpoints --test_env 5 --output_dir VIEWPOINTS/dg_viewpoints_all_envs/${algorithms[$experiment_index]}_new --holdout_fraction 0.01 --hparams_seed 24596 --batch_size 24 
