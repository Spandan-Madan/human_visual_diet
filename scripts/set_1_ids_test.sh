experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/8_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/6_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/2_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/upper_bound_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_main_xml_v3.json --imagedir ../ --outdir v3_output/lower_bound_material/ --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_A --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/8_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/6_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/2_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/upper_bound_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/test_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/lower_bound_material/ --batch_size 15 --weighted_prediction --batch_size 200 --outname test_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/8_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/6_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "18" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/2_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "19" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/upper_bound_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "20" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/lower_bound_material/ --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "21" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "22" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/8_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "23" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/6_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "24" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "25" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/2_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "26" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/upper_bound_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "27" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffLight_xml_v3.json --imagedir ../ --outdir v3_output/lower_bound_material/ --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_light --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "28" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/10_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "29" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/8_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "30" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/6_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "31" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "32" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/2_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "33" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/upper_bound_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "34" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml1_v3.json --imagedir ../ --outdir v3_output/lower_bound_material/ --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B_viewpoint --config config.yaml --checkpoint checkpoint_18.tar
elif [ "$experiment_index" = "35" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/many_styles_hotswapped_material/  --batch_size 15 --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_50.tar
elif [ "$experiment_index" = "36" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_resnet.py --annotations ../openrooms/annotation_files/train_mainDiffMat_xml_v3.json --imagedir ../ --outdir v3_output/resnet_10_styles_hotswapped_material/ --weighted_prediction --batch_size 200 --outname train_domain_B --config config.yaml --checkpoint checkpoint_27.tar
fi
