experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints.json --imagedir ../ --outdir ilab/resnet_viewpoints/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style.json --imagedir ../ --outdir ilab/resnet_style/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_style.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light.json --imagedir ../ --outdir ilab/resnet_light/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../iLab/annotation_files/test_iLab_light.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints.json --imagedir ../ --outdir ilab/densenet_viewpoints/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style.json --imagedir ../ --outdir ilab/densenet_style/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_style.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light.json --imagedir ../ --outdir ilab/densenet_light/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../iLab/annotation_files/test_iLab_light.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints.json --imagedir ../ --outdir ilab/vit_viewpoints/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_viewpoints.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style.json --imagedir ../ --outdir ilab/vit_style/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_style.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light.json --imagedir ../ --outdir ilab/vit_light/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../iLab/annotation_files/test_iLab_light.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints.json --imagedir ../ --outdir ilab/mobilenet_viewpoints/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style.json --imagedir ../ --outdir ilab/mobilenet_style/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_style.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light.json --imagedir ../ --outdir ilab/mobilenet_light/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../iLab/annotation_files/test_iLab_light.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_viewpoints.json --imagedir ../ --outdir ilab/squeezenet_viewpoints/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_viewpoints.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_style.json --imagedir ../ --outdir ilab/squeezenet_style/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_style.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../iLab/annotation_files/train_iLab_light.json --imagedir ../ --outdir ilab/squeezenet_light/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../iLab/annotation_files/test_iLab_light.json --test_imagedir ../ --test_frequency 10 --checkpoint checkpoint_9.tar
fi
