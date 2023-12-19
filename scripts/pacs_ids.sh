experiment_index=$1
echo $experiment_index

cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/DomainBed
eval "$(conda shell.bash hook)"
conda activate domain_adaptation

if [ "$experiment_index" = "0" ]; then
    python -m domainbed.scripts.train --data_dir=./domainbed/data/PACS/ --algorithm ERM --dataset PACS --test_env 2 --output_dir train_output/PACS
elif [ "$experiment_index" = "1" ]; then
    python -m domainbed.scripts.train --data_dir=./domainbed/data/PACS/ --algorithm ERM --dataset PACS --test_env 1 2 3 --output_dir train_output/PACS
fi
