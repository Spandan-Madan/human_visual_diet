experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50_lift_the_flap/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_lift_the_flap/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_lift_the_flap/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50_lift_the_flap/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_lift_the_flap/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50_lift_the_flap/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50_no_context/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_no_context/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_no_context/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50_no_context/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_no_context/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50_no_context/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
fi
