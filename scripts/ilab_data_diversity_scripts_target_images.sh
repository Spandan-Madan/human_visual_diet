experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_1_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_2_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_2_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_2_by_5_repeat_2.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_3_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_3_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_3_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_4_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_4_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_4_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_style_1_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_2_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_style_2_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_2_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_3_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_style_3_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_3_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_4_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_style_4_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_4_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_light_1_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_2_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_light_2_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_2_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_3_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_light_3_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_3_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_4_by_5.json --imagedir ../ --outdir ilab_v3_extreme/resnet_light_4_by_5_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_4_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    echo 1
    # python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_2_by_5_repeat_2.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_2_by_5_repeat_2_target/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_2_by_5_repeat_2.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "13" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/densenet_style_1_by_5_target/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "14" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/densenet_viewpoints_1_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "15" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/densenet_light_1_by_5_target/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "16" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/vit_style_1_by_5_target/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "17" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/vit_viewpoints_1_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "18" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/vit_light_1_by_5_target/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "19" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_style_1_by_5_target/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "20" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_viewpoints_1_by_5_repeat_target/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "21" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme_1_by_5.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_light_1_by_5_target/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme_1_by_5.json --test_imagedir ../ --test_frequency 5 --pretrained      
elif [ "$experiment_index" = "22" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_viewpoints_1_by_5_repeat_target_geometric/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --pretrained
elif [ "$experiment_index" = "23" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_1_by_5_repeat_target_geometric/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --pretrained
elif [ "$experiment_index" = "24" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/vit_viewpoints_1_by_5_repeat_target_geometric/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --pretrained
elif [ "$experiment_index" = "25" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/densenet_viewpoints_1_by_5_repeat_target_geometric/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --pretrained
elif [ "$experiment_index" = "26" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_viewpoints_1_by_5_repeat_target_geometric_color/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --color_transforms --pretrained
elif [ "$experiment_index" = "27" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_1_by_5_repeat_target_geometric_color/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms  --color_transforms --pretrained
elif [ "$experiment_index" = "28" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/vit_viewpoints_1_by_5_repeat_target_geometric_color/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms  --color_transforms --pretrained
elif [ "$experiment_index" = "29" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/densenet_viewpoints_1_by_5_repeat_target_geometric_color/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms  --color_transforms --pretrained
# elif [ "$experiment_index" = "30" ]; then
#     cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
#     eval "$(conda shell.bash hook)"
#     module load GCC/8.2.0-2.31.1
#     conda activate domain_adaptation
#     python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_viewpoints_1_by_5_repeat_target_geometric_color_complex/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --color_transforms --complex_transforms --pretrained
# elif [ "$experiment_index" = "31" ]; then
#     cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
#     eval "$(conda shell.bash hook)"
#     module load GCC/8.2.0-2.31.1
#     conda activate domain_adaptation
#     python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints_1_by_5_repeat_target_geometric_color_complex/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms  --color_transforms  --complex_transforms --pretrained
# elif [ "$experiment_index" = "32" ]; then
#     cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
#     eval "$(conda shell.bash hook)"
#     module load GCC/8.2.0-2.31.1
#     conda activate domain_adaptation
#     python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/vit_viewpoints_1_by_5_repeat_target_geometric_color_complex/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms  --color_transforms  --complex_transforms --pretrained
# elif [ "$experiment_index" = "33" ]; then
#     cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
#     eval "$(conda shell.bash hook)"
#     module load GCC/8.2.0-2.31.1
#     conda activate domain_adaptation
#     python train_simple_cnn_augmentations.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --imagedir ../ --outdir ilab_v3_extreme/densenet_viewpoints_1_by_5_repeat_target_geometric_color_complex/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme_1_by_5_repeat.json --test_imagedir ../ --test_frequency 5 --geometric_transforms  --color_transforms  --complex_transforms --pretrained
fi