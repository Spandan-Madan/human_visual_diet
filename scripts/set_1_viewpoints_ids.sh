experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_1/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_2_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_2/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_3_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_3/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_4_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_4/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_4_v3.json --imagedir ../ --outdir v3_output/viewpoints_0_4_all_materials_and_styles/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6, main_xml1_arbitrary_1, main_xml1_arbitrary_candy, main_xml1_arbitrary_Composition-VII, main_xml1_arbitrary_la_muse, main_xml1_arbitrary_rain_princess, main_xml1_arbitrary_seated_nude, main_xml1_arbitrary_Starry, main_xml1_arbitrary_style11, main_xml1_arbitrary_udnie, main_xml1_arbitrary_wave"
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoints_0_1_all_materials_and_styles/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6, main_xml1_arbitrary_1, main_xml1_arbitrary_candy, main_xml1_arbitrary_Composition-VII, main_xml1_arbitrary_la_muse, main_xml1_arbitrary_rain_princess, main_xml1_arbitrary_seated_nude, main_xml1_arbitrary_Starry, main_xml1_arbitrary_style11, main_xml1_arbitrary_udnie, main_xml1_arbitrary_wave"
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_3_4_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_3_4/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_1/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2" --checkpoint checkpoint_27.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_2/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3" --checkpoint checkpoint_27.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint checkpoint_28.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/all_hotswapped/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4, main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3" --checkpoint checkpoint_14.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint_auto_load.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_context_25/ --hard_mining both --epochs 50 --batch_size 50 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint "last" --blur_context 25
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint_auto_load.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_context_125/ --hard_mining both --epochs 50 --batch_size 50 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint "last" --blur_context 125
elif [ "$experiment_index" = "13" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint_auto_load.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_target_25/ --hard_mining both --epochs 50 --batch_size 50 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint "last" --blur_target 25
elif [ "$experiment_index" = "14" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint_auto_load.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_target_125/ --hard_mining both --epochs 50 --batch_size 50 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint "last" --blur_target 125
elif [ "$experiment_index" = "15" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint_auto_load.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_two_stream_cnn/ --hard_mining none --epochs 50 --batch_size 75 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint "last" --cnn_baseline 
elif [ "$experiment_index" = "16" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint_auto_load.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_two_stream_vit/ --hard_mining none --epochs 50 --batch_size 75 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4" --checkpoint "last" --cnn_baseline --vit_baseline
elif [ "$experiment_index" = "17" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_1_repeated/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2" --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --weighted_prediction --test_frequency 5 --pretrained
elif [ "$experiment_index" = "18" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_1_repeated_geometric_color/ --hard_mining both --epochs 60 --batch_size 15 --material_names "main_xml_viewpoint_2" --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --weighted_prediction --test_frequency 5 --pretrained --color_transforms --geometric_transforms --checkpoint checkpoint_40.tar
fi