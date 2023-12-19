experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/1_transfer_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/2_transfer_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/3_transfer_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_transfer_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/5_transfer_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_5_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_5_style_hotswapped_material_50_non_contrastive/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_4_style_hotswapped_material_50_non_contrastive/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "18" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_material_50_non_contrastive/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "19" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_material_50_non_contrastive/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "20" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_material_50_non_contrastive/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "21" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/lower_bound_material_50/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "22" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "23" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "24" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "25" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_19.tar
elif [ "$experiment_index" = "26" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_44 --config config.yaml --checkpoint checkpoint_44.tar
elif [ "$experiment_index" = "27" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/contrastive_context_1_style_hotswapped_material_50/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "28" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/contrastive_context_2_style_hotswapped_material_50/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "29" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/contrastive_context_3_style_hotswapped_material_50/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "30" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/contrastive_context_4_style_hotswapped_material_50/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "31" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/contrastive_context_5_style_hotswapped_material_50/ --weighted_prediction --batch_size 50 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "32" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_empty_baseline/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "33" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_repeat_2/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "34" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_non_contrastive_repeat_2/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "35" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_target_25/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_15.tar --blur_target 25
elif [ "$experiment_index" = "36" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_context_25/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_15.tar --blur_context 25
elif [ "$experiment_index" = "37" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_two_stream_cnn/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_19.tar --cnn_baseline
elif [ "$experiment_index" = "38" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_target_125/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_10.tar --blur_target 125
elif [ "$experiment_index" = "39" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_context_125/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_10.tar --blur_context 125
elif [ "$experiment_index" = "40" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_blurred_target --config config.yaml --checkpoint checkpoint_20.tar --blur_target 125
elif [ "$experiment_index" = "41" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_blurred_context --config config.yaml --checkpoint checkpoint_20.tar --blur_context 125
elif [ "$experiment_index" = "42" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_zeroed_target --config config.yaml --checkpoint checkpoint_20.tar --blur_target -1
elif [ "$experiment_index" = "43" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_zeroed_context --config config.yaml --checkpoint checkpoint_20.tar --blur_context -1
elif [ "$experiment_index" = "44" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_shuffled_target --config config.yaml --checkpoint checkpoint_20.tar --blur_target -2
elif [ "$experiment_index" = "45" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname unseen_materials_shuffled_context --config config.yaml --checkpoint checkpoint_20.tar --blur_context -2
elif [ "$experiment_index" = "46" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_two_stream_vit/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_10.tar --cnn_baseline
fi
