experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/lower_bound_lights_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/one_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/two_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/three_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/lower_bound_lights_50/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_context_25/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_19.tar --blur_context 25
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_context_125/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_19.tar --blur_context 125
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_target_25/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar --blur_target 25
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_blur_target_125/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_20.tar --blur_target 125
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_two_stream_vit/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_10.tar --cnn_baseline
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_lights_two_stream_cnn/ --weighted_prediction --batch_size 200 --outname unseen_lights --config config.yaml --checkpoint checkpoint_10.tar --cnn_baseline
fi
