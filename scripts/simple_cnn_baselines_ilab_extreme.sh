experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_viewpoints/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_style/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_light/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_viewpoints/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_style/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_light/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_viewpoints/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_style/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_light/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_viewpoints/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_style/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_light/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_viewpoints_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/squeezenet_viewpoints/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/squeezenet_style/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_style_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_light_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/squeezenet_light/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_light_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_all_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_all_transformations/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_all_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_all_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_all_transformations/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_all_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_all_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_all_transformations/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_all_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "18" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_all_transformations_v3_extreme_more_combinations.json --imagedir ../ --outdir ilab_v3_extreme/resnet_all_transformations_more_combinations/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_all_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "19" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_all_transformations_v3_extreme_more_combinations.json --imagedir ../ --outdir ilab_v3_extreme/densenet_all_transformations_more_combinations/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_all_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "20" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_all_transformations_v3_extreme_more_combinations.json --imagedir ../ --outdir ilab_v3_extreme/vit_all_transformations_more_combinations/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_all_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "21" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_transformations/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "22" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_transformations/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "23" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_transformations/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "24" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_non_marginal_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_transformations_non_marginal/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_transformations_non_marginal_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "25" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_non_marginal_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_transformations_non_marginal/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_transformations_non_marginal_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "26" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_non_marginal_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_transformations_non_marginal/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_transformations_non_marginal_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "27" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/resnet_style_data_augmentations/ --epochs 50 --batch_size 100 --model_name resnet --test_annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --test_imagedir ../ --test_frequency 5 --two_d_transforms    
elif [ "$experiment_index" = "28" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/vit_style_data_augmentations/ --epochs 50 --batch_size 100 --model_name vit --test_annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --test_imagedir ../ --test_frequency 5 --two_d_transforms    
elif [ "$experiment_index" = "29" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_style_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/densenet_style_data_augmentations/ --epochs 50 --batch_size 100 --model_name densenet --test_annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --test_imagedir ../ --test_frequency 5 --two_d_transforms    
elif [ "$experiment_index" = "30" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/mobilenet_transformations/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5    
elif [ "$experiment_index" = "31" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    module load GCC/8.2.0-2.31.1
    python train_simple_cnn_whole_img.py --annotations ../iLab/annotation_files/train_iLab_transformations_v3_extreme.json --imagedir ../ --outdir ilab_v3_extreme/squeezenet_transformations/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --test_imagedir ../ --test_frequency 5    
fi
