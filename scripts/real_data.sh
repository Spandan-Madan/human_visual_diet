experiment_index=$1

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
	python train.py --annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_real_overfitted/ --epochs 75 --batch_size 15 --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_50.tar 
elif [ "$experiment_index" = "1" ]; then
	cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
	python train.py --annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_real_trained/ --epochs 75 --batch_size 15 --test_annotations ../openrooms/annotation_files/scannet_synthetic_handmade_cleaned_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_50.tar 
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/scannet_synthetic_handmade_cleaned_test_set.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_synthetic_overfitted/ --epochs 75 --batch_size 15 --test_annotations ../openrooms/annotation_files/scannet_synthetic_handmade_cleaned_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_50.tar 
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/scannet_synthetic_handmade_cleaned_test_set.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_synthetic_trained/ --epochs 75 --batch_size 15 --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_50.tar
fi
