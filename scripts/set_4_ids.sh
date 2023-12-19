experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/main_xml_mainDiffMat_xml_interpolated_02/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_mainDiffMat_xml_interpolated_02"
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/main_xml_mainDiffMat_xml_interpolated_04/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_mainDiffMat_xml_interpolated_04"
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/main_xml_mainDiffMat_xml_interpolated_06/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_mainDiffMat_xml_interpolated_06"
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_v3.json --imagedir ../ --outdir v3_output/main_xml_mainDiffMat_xml_interpolated_08/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_mainDiffMat_xml_interpolated_08"
fi
