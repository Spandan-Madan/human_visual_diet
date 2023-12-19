experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50_lift_the_flap/ --epochs 50 --batch_size 15 --lift_the_flap
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_lift_the_flap/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2" --lift_the_flap
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_lift_the_flap/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3" --lift_the_flap
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50_lift_the_flap/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4" --lift_the_flap
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_lift_the_flap/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --lift_the_flap
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50_lift_the_flap/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6" --lift_the_flap
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50_no_context/ --epochs 50 --batch_size 15 --no_context
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_no_context/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2" --no_context
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_no_context/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3" --no_context
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50_no_context/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4" --no_context
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_no_context/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --no_context
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50_no_context/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6" --no_context
fi
