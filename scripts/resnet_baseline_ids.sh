experiment_index=$1
echo $experiment_index

cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/
eval "$(conda shell.bash hook)"
conda activate domain_adaptation

python train_resnet.py --save_folder v3_output/base_resnet_material/ --train_data_folder ../DomainBed/domainbed/data/DGMaterials/main_xml_50/

