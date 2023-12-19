experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_material_only_context/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse, main_xml_arbitrary_rain_princess, main_xml_arbitrary_seated_nude, main_xml_arbitrary_Starry, main_xml_arbitrary_style11, main_xml_arbitrary_udnie, main_xml_arbitrary_wave" --lift_the_flap
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/10_styles_material_no_context/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_arbitrary_1, main_xml_arbitrary_candy, main_xml_arbitrary_Composition-VII, main_xml_arbitrary_la_muse, main_xml_arbitrary_rain_princess, main_xml_arbitrary_seated_nude, main_xml_arbitrary_Starry, main_xml_arbitrary_style11, main_xml_arbitrary_udnie, main_xml_arbitrary_wave" --no_context
fi
