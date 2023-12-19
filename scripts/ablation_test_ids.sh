experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_only/  --no_context --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_only/  --no_target --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context/  --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_contrastive/ --no_context --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_contrastive/ --no_target --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_contrastive/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_cnn.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_only_cnn/  --no_context --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_30.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_cnn.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_only_cnn/  --no_target --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_30.tar
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_cnn.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_cnn/  --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_30.tar
elif [ "$experiment_index" = "9" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_cnn.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_contrastive_cnn/ --no_context --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_30.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_cnn.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_contrastive_cnn/ --no_target --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_29.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_cnn.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_contrastive_cnn/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_30.tar
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_vit.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_only_vit/  --no_context --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_vit.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_only_vit/  --no_target --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_vit.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_vit/  --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "15" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_vit.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_contrastive_vit/ --no_context --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "16" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_vit.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/context_contrastive_vit/ --no_target --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "17" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test_lift_vit.py --annotations ../openrooms/annotation_files/test_main_xml_50_v3.json --imagedir ../ --outdir ablation_experiments/target_context_contrastive_vit/ --weighted_prediction --batch_size 200 --outname unseen_materials --config config.yaml --checkpoint checkpoint_9.tar
fi
