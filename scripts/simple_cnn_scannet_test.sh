experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/resnet_light_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name resnet
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/resnet_material_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name resnet
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/resnet_viewpoint_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name resnet
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_28.tar --config config.yaml --outdir v3_output/vit_light_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name vit
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_23.tar --config config.yaml --outdir v3_output/vit_material_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name vit
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/vit_viewpoint_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name vit
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/densenet_light_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name densenet
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/densenet_material_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name densenet
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/densenet_viewpoint_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name densenet
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/mobilenet_light_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name mobilenet
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/mobilenet_material_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name mobilenet
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/mobilenet_viewpoint_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name mobilenet
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/squeezenet_light_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name squeezenet
elif [ "$experiment_index" = "13" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/squeezenet_material_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name squeezenet
elif [ "$experiment_index" = "14" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_simple_cnn.py --checkpoint checkpoint_30.tar --config config.yaml --outdir v3_output/squeezenet_viewpoint_transfer_scratch/ --annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --imagedir ../ --outname scannet_handmade --weighted_prediction --batch_size 50 --model_name squeezenet
fi
