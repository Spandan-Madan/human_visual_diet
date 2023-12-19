experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse, main_xml_arbitrary_rain_princess, main_xml_arbitrary_seated_nude, main_xml_arbitrary_Starry, main_xml_arbitrary_style11, main_xml_arbitrary_udnie, main_xml_arbitrary_wave"
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/8_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse, main_xml_arbitrary_rain_princess, main_xml_arbitrary_seated_nude, main_xml_arbitrary_Starry, main_xml_arbitrary_style11"
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/6_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse, main_xml_arbitrary_rain_princess, main_xml_arbitrary_seated_nude"
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse"
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/2_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy"
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/upper_bound_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "mainDiffMat_xml"
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/lower_bound_material/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/many_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_many_styles_repeat_0, main_xml_arbitrary_many_styles_repeat_1, main_xml_arbitrary_many_styles_repeat_2, main_xml_arbitrary_many_styles_repeat_3, main_xml_arbitrary_many_styles_repeat_4, main_xml_arbitrary_many_styles_repeat_5, main_xml_arbitrary_many_styles_repeat_6, main_xml_arbitrary_many_styles_repeat_7, main_xml_arbitrary_many_styles_repeat_8, main_xml_arbitrary_many_styles_repeat_9" --checkpoint checkpoint_37.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/resnet_10_styles_hotswapped_material/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse, main_xml_arbitrary_rain_princess, main_xml_arbitrary_seated_nude, main_xml_arbitrary_Starry, main_xml_arbitrary_style11, main_xml_arbitrary_udnie, main_xml_arbitrary_wave" --learning_rate 0.0001
fi
