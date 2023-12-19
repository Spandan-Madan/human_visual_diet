experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_light_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_lights_1"
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_light_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_lights_1, main_xml_50_lights_2"
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_light_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3"
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python train_hotswapped_resnet_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_viewpoints_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_viewpoint_2"
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python train_hotswapped_resnet_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_viewpoints_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3"
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python train_hotswapped_resnet_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_viewpoints_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4"
fi