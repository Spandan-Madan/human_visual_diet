experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_scannet_xml_50_v2.json --imagedir ../ --outdir v3_output/scannet_paired/ --hard_mining both --epochs 100 --batch_size 10 --material_names "scannet_xml_50_2, scannet_xml_realistic" --checkpoint checkpoint_50.tar --test_annotations ../openrooms/annotation_files/train_scannet_real_50_v2.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_augmented.py --annotations ../openrooms/annotation_files/train_scannet_xml_50_v2.json --imagedir ../ --outdir v3_output/scannet_paired_augmented/ --hard_mining both --epochs 100 --batch_size 10 --material_names "scannet_xml_50_2, scannet_xml_realistic" --test_annotations ../openrooms/annotation_files/train_scannet_real_50_v2.json --test_imagedir ../ --test_frequency 5
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_augmented.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/non_scannet_paired_augmented/ --hard_mining both --epochs 100 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations ../openrooms/annotation_files/train_scannet_real_50_v2.json --test_imagedir ../ --test_frequency 5 --checkpoint checkpoint_4.tar
fi
