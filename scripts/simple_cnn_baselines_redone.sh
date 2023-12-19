experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_material_transfer_redone/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/squeezenet_material_transfer_redone/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/densenet_material_transfer_redone/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/mobilenet_material_transfer_redone/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/resnet_light_transfer_redone/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/squeezenet_light_transfer_redone/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/densenet_light_transfer_redone/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/mobilenet_light_transfer_redone/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/resnet_viewpoint_transfer_redone/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/squeezenet_viewpoint_transfer_redone/ --epochs 50 --batch_size 40 --model_name squeezenet --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/densenet_viewpoint_transfer_redone/ --epochs 50 --batch_size 40 --model_name densenet --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/mobilenet_viewpoint_transfer_redone/ --epochs 50 --batch_size 40 --model_name mobilenet --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/vit_material_transfer_redone/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "13" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/vit_viewpoint_transfer_redone/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
elif [ "$experiment_index" = "14" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_v3.json --imagedir ../ --outdir v3_output/vit_light_transfer_redone/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --test_imagedir ../ --test_frequency 10 --pretrained
fi
