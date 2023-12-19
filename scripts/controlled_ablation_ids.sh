experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_5/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 5 --context_blur --checkpoint checkpoint_15.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_5/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 5 --target_blur --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/all_blur_5/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 5 --context_blur --target_blur --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_0/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 0 --context_blur --checkpoint checkpoint_5.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_0/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 0 --target_blur --checkpoint checkpoint_5.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/all_blur_0/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 0 --context_blur --target_blur --checkpoint checkpoint_5.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_10/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 10 --context_blur --checkpoint checkpoint_6.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_10/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 10 --target_blur --checkpoint checkpoint_11.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/all_blur_10/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 10 --context_blur --target_blur
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_20/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 20 --context_blur --checkpoint checkpoint_2.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_20/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 20 --target_blur --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/all_blur_20/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 20 --context_blur --target_blur
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_5_non_contrastive/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 5 --context_blur --non_contrastive
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_5_non_contrastive/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 5 --target_blur --non_contrastive
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_0_non_contrastive/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 0 --context_blur --non_contrastive
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_0_non_contrastive/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 0 --target_blur --non_contrastive
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_10_non_contrastive/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 10 --context_blur --non_contrastive
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_10_non_contrastive/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 10 --target_blur --non_contrastive
elif [ "$experiment_index" = "18" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_20_non_contrastive/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 20 --context_blur --non_contrastive
elif [ "$experiment_index" = "19" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/target_blur_20_non_contrastive/ --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 20 --target_blur --non_contrastive
elif [ "$experiment_index" = "20" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments_blurred/context_blur_100/  --test_annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --test_imagedir ../ --epochs 50 --batch_size 5 --test_frequency 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --blur_strength 100 --context_blur
fi
