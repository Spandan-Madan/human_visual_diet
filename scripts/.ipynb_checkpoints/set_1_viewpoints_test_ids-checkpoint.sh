experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_1/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoints_0_1_all_materials_and_styles/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_2/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_4/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_3_4/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoints_0_4_all_materials_and_styles/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/1_viewpoint_hotswapped/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/2_viewpoint_hotswapped/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/3_viewpoint_hotswapped/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/material_viewpoint_lighting_hotswapped/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_16.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/1_viewpoint_hotswapped/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/2_viewpoint_hotswapped/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/3_viewpoint_hotswapped/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_1/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_2/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/all_hotswapped/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "18" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_context_25/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar --blur_context 25
elif [ "$experiment_index" = "19" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_context_125/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar --blur_context 125
elif [ "$experiment_index" = "20" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_target_25/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar --blur_target 25
elif [ "$experiment_index" = "21" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_blur_target_125/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar --blur_target 125
elif [ "$experiment_index" = "22" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_two_stream_vit/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar --cnn_baseline
elif [ "$experiment_index" = "23" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_viewpoints_two_stream_cnn/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints --config config.yaml --checkpoint checkpoint_20.tar --cnn_baseline
elif [ "$experiment_index" = "24" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_24 --config config.yaml --checkpoint checkpoint_24.tar
elif [ "$experiment_index" = "25" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_25 --config config.yaml --checkpoint checkpoint_25.tar
elif [ "$experiment_index" = "26" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_26 --config config.yaml --checkpoint checkpoint_26.tar
elif [ "$experiment_index" = "27" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_27 --config config.yaml --checkpoint checkpoint_27.tar
elif [ "$experiment_index" = "28" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_28 --config config.yaml --checkpoint checkpoint_28.tar
elif [ "$experiment_index" = "29" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_29 --config config.yaml --checkpoint checkpoint_29.tar
elif [ "$experiment_index" = "30" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_30 --config config.yaml --checkpoint checkpoint_30.tar
elif [ "$experiment_index" = "31" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_31 --config config.yaml --checkpoint checkpoint_31.tar
elif [ "$experiment_index" = "32" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_32 --config config.yaml --checkpoint checkpoint_32.tar
elif [ "$experiment_index" = "33" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_33 --config config.yaml --checkpoint checkpoint_33.tar
elif [ "$experiment_index" = "34" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_34 --config config.yaml --checkpoint checkpoint_34.tar
elif [ "$experiment_index" = "35" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_35 --config config.yaml --checkpoint checkpoint_35.tar
elif [ "$experiment_index" = "36" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_36 --config config.yaml --checkpoint checkpoint_36.tar
elif [ "$experiment_index" = "37" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_37 --config config.yaml --checkpoint checkpoint_37.tar
elif [ "$experiment_index" = "38" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate python_env1
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname unseen_viewpoints_38 --config config.yaml --checkpoint checkpoint_38.tar
fi