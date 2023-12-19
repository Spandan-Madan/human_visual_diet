experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_1/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_2_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_2/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_3_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_3/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_4_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_4/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_4_v3.json --imagedir ../ --outdir v3_output/viewpoints_0_4_all_materials_and_styles/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6, main_xml1_arbitrary_1, main_xml1_arbitrary_candy, main_xml1_arbitrary_Composition-VII, main_xml1_arbitrary_la_muse, main_xml1_arbitrary_rain_princess, main_xml1_arbitrary_seated_nude, main_xml1_arbitrary_Starry, main_xml1_arbitrary_style11, main_xml1_arbitrary_udnie, main_xml1_arbitrary_wave"
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/viewpoints_0_1_all_materials_and_styles/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6, main_xml1_arbitrary_1, main_xml1_arbitrary_candy, main_xml1_arbitrary_Composition-VII, main_xml1_arbitrary_la_muse, main_xml1_arbitrary_rain_princess, main_xml1_arbitrary_seated_nude, main_xml1_arbitrary_Starry, main_xml1_arbitrary_style11, main_xml1_arbitrary_udnie, main_xml1_arbitrary_wave"
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_viewpoints_3_4_v3.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_3_4/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/1_viewpoint_hotswapped/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2"
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/2_viewpoint_hotswapped/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3"
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/3_viewpoint_hotswapped/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4"
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/material_viewpoint_lighting_hotswapped/ --hard_mining both --epochs 40 --batch_size 15 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4, main_xml_viewpoint_5, main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3"
fi
