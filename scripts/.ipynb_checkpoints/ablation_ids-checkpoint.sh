experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_only/ --non_contrastive --no_context --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_only/ --non_contrastive --no_target --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context/ --non_contrastive --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_contrastive/ --no_context --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_contrastive/ --no_target --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_contrastive/ --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_only_cnn/ --non_contrastive --no_context --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_only_cnn/ --non_contrastive --no_target --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_cnn/ --non_contrastive --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_contrastive_cnn/ --no_context --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_contrastive_cnn/ --no_target --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_cnn.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_contrastive_cnn/ --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_vit.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_only_vit/ --non_contrastive --no_context --epochs 50 --batch_size 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_vit.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_only_vit/ --non_contrastive --no_target --epochs 50 --batch_size 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_vit.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_vit/ --non_contrastive --epochs 50 --batch_size 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_vit.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_contrastive_vit/ --no_context --epochs 50 --batch_size 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_vit.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_contrastive_vit/ --no_target --epochs 50 --batch_size 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_lift_vit.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_contrastive_vit/ --epochs 50 --batch_size 5 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
fi
