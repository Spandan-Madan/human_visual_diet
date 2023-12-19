experiment_index=$1
echo $experiment_index

algorithms=("ERM" "IRM" "GroupDRO" "CORAL" "MMD" "MTL" "SagNet" "VREx" "ANDMask" "IGA" "SelfReg" "CAD")

cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
conda activate domain_adaptation
python -m domainbed.scripts.train --data_dir=./domainbed/data/ --algorithm ${algorithms[$experiment_index]} --dataset DGViewpoints --test_env 5 --output_dir VIEWPOINTS/da_viewpoints_all_envs/${algorithms[$experiment_index]} --holdout_fraction 0.01 --hparams_seed 24596 --task domain_adaptation --uda_holdout_fraction 0.5 --batch_size 24 --continue_num 2
