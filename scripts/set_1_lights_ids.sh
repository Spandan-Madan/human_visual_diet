experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/lower_bound_lights_50/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/one_hotswapped_light_50/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_50_lights_1"
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/two_hotswapped_light_50/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_50_lights_1, main_xml_50_lights_2"
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/three_hotswapped_light_50/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3"
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/four_hotswapped_light_50/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4"
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_context_25/ --hard_mining both --epochs 50 --batch_size 100 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --checkpoint "last" --blur_context 25
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_context_125/ --hard_mining both --epochs 50 --batch_size 100 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --checkpoint "last" --blur_context 125
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_target_25/ --hard_mining both --epochs 50 --batch_size 100 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --checkpoint "last" --blur_target 25
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_target_125/ --hard_mining both --epochs 50 --batch_size 100 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --checkpoint "last" --blur_target 125
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_two_stream_cnn/ --hard_mining none --epochs 50 --batch_size 75 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --checkpoint "last" --cnn_baseline 
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_two_stream_vit/ --hard_mining none --epochs 50 --batch_size 75 --material_names "main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --checkpoint "last" --cnn_baseline --vit_baseline
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_augmentations.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/one_hotswapped_light_50_geometric_color/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_lights_1" --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --color_transforms --pretrained
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/one_hotswapped_light_50_repeated/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_lights_1" --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 5 --pretrained
fi
