experiment_index=$1
echo $experiment_index

algorithms=("ERM" "IRM" "GroupDRO" "CORAL" "MMD" "MTL" "SagNet" "VREx" "ANDMask" "IGA" "SelfReg" "CAD")

cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
module load GCC/8.2.0-2.31.1
conda activate python_env1
python hvd_variances.py --base_folder dg_all_envs --algorithm ${algorithms[$experiment_index]}
