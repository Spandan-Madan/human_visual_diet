experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/baselines/DG-Feature-Stylization
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    bash run_openrooms_v3.sh
fi
