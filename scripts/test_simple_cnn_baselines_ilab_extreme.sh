experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --outdir ilab_v3_extreme/resnet_style --outname train_style_test_transformations  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_transformations.json --outdir ilab_v3_extreme/resnet_viewpoints --outname train_viewpoints_test_transformations  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_transformations.json --outdir ilab_v3_extreme/resnet_light --outname train_light_test_transformations  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --outdir ilab_v3_extreme/resnet_transformations --outname train_transformations_test_transformations  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_style_v3_extreme.json --outdir ilab_v3_extreme/resnet_style --outname train_style_test_style  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_style.json --outdir ilab_v3_extreme/resnet_viewpoints --outname train_viewpoints_test_style  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_style.json --outdir ilab_v3_extreme/resnet_light --outname train_light_test_style  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --outdir ilab_v3_extreme/resnet_transformations --outname train_transformations_test_style  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_light.json --outdir ilab_v3_extreme/resnet_style --outname train_style_test_light  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_light.json --outdir ilab_v3_extreme/resnet_viewpoints --outname train_viewpoints_test_light  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_light_v3_extreme.json --outdir ilab_v3_extreme/resnet_light --outname train_light_test_light  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --outdir ilab_v3_extreme/resnet_transformations --outname train_transformations_test_light  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_viewpoints.json --outdir ilab_v3_extreme/resnet_style --outname train_style_test_viewpoints  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "13" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_viewpoints_v3_extreme.json --outdir ilab_v3_extreme/resnet_viewpoints --outname train_viewpoints_test_viewpoints  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "14" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_viewpoints.json --outdir ilab_v3_extreme/resnet_light --outname train_light_test_viewpoints  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "15" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/test_iLab_transformations_v3_extreme.json --outdir ilab_v3_extreme/resnet_transformations --outname train_transformations_test_viewpoints  --model_name resnet --checkpoint checkpoint_50.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "16" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --outdir ilab_v3_extreme/densenet_style --outname train_style_test_transformations  --model_name densenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "17" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_transformations.json --outdir ilab_v3_extreme/densenet_viewpoints --outname train_viewpoints_test_transformations  --model_name densenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "18" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_transformations.json --outdir ilab_v3_extreme/densenet_light --outname train_light_test_transformations  --model_name densenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "19" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --outdir ilab_v3_extreme/mobilenet_style --outname train_style_test_transformations  --model_name mobilenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "20" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_transformations.json --outdir ilab_v3_extreme/mobilenet_viewpoints --outname train_viewpoints_test_transformations  --model_name mobilenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "21" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_transformations.json --outdir ilab_v3_extreme/mobilenet_light --outname train_light_test_transformations  --model_name mobilenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "22" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --outdir ilab_v3_extreme/vit_style --outname train_style_test_transformations  --model_name vit --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "23" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_transformations.json --outdir ilab_v3_extreme/vit_viewpoints --outname train_viewpoints_test_transformations  --model_name vit --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "24" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_transformations.json --outdir ilab_v3_extreme/vit_light --outname train_light_test_transformations  --model_name vit --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "25" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_style_test_transformations.json --outdir ilab_v3_extreme/squeezenet_style --outname train_style_test_transformations  --model_name squeezenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "26" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_viewpoints_test_transformations.json --outdir ilab_v3_extreme/squeezenet_viewpoints --outname train_viewpoints_test_transformations  --model_name squeezenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
elif [ "$experiment_index" = "27" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    module load gcc/9.2.0-fasrc01
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn_grayscale.py --annotations ../iLab/annotation_files/contents_train_light_test_transformations.json --outdir ilab_v3_extreme/squeezenet_light --outname train_light_test_transformations  --model_name squeezenet --checkpoint checkpoint_30.tar --config config.yaml  --imagedir ../ --batch_size 200
fi