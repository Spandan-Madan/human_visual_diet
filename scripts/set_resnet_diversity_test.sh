experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_viewpoints_50/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_viewpoints_50/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_viewpoints_50/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_15.tar
fi