experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "1" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2"
elif [ "$experiment_index" = "2" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3"
elif [ "$experiment_index" = "3" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4"
elif [ "$experiment_index" = "4" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --hard_mining both --epochs 50 --checkpoint checkpoint_23.tar --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "5" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_transfer_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_arbitrary_many_styles_repeat_0"
elif [ "$experiment_index" = "6" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_transfer_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_arbitrary_many_styles_repeat_0, main_xml_50_arbitrary_many_styles_repeat_1"
elif [ "$experiment_index" = "7" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/3_transfer_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_arbitrary_many_styles_repeat_0, main_xml_50_arbitrary_many_styles_repeat_1, main_xml_50_arbitrary_many_styles_repeat_2"
elif [ "$experiment_index" = "8" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_transfer_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_arbitrary_many_styles_repeat_0, main_xml_50_arbitrary_many_styles_repeat_1, main_xml_50_arbitrary_many_styles_repeat_2, main_xml_50_arbitrary_many_styles_repeat_3"
elif [ "$experiment_index" = "9" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/5_transfer_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_arbitrary_many_styles_repeat_0, main_xml_50_arbitrary_many_styles_repeat_1, main_xml_50_arbitrary_many_styles_repeat_2, main_xml_50_arbitrary_many_styles_repeat_3, main_xml_50_arbitrary_many_styles_repeat_4"
elif [ "$experiment_index" = "10" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6"
elif [ "$experiment_index" = "11" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_5_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6"
elif [ "$experiment_index" = "12" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_4_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "13" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4"
elif [ "$experiment_index" = "14" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3"
elif [ "$experiment_index" = "15" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_material_50/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2"
elif [ "$experiment_index" = "16" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_resnet.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_lower_bound_material_50/ --epochs 50 --batch_size 15
elif [ "$experiment_index" = "17" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet_non_contrastive.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_5_style_hotswapped_material_50_non_contrastive/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_6"
elif [ "$experiment_index" = "18" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet_non_contrastive.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_4_style_hotswapped_material_50_non_contrastive/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "19" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet_non_contrastive.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_3_style_hotswapped_material_50_non_contrastive/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4"
elif [ "$experiment_index" = "20" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet_non_contrastive.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_2_style_hotswapped_material_50_non_contrastive/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3"
elif [ "$experiment_index" = "21" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_resnet_non_contrastive.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/resnet_1_style_hotswapped_material_50_non_contrastive/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2"
elif [ "$experiment_index" = "22" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_empty_baseline/ --hard_mining both --epochs 20 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --empty_baseline
elif [ "$experiment_index" = "23" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model resnet
elif [ "$experiment_index" = "24" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model densenet
elif [ "$experiment_index" = "25" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model squeezenet
elif [ "$experiment_index" = "26" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model mobilenet
elif [ "$experiment_index" = "27" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model resnext
elif [ "$experiment_index" = "28" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model resnet --out_file resnet_pretrained.out
elif [ "$experiment_index" = "29" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model densenet --out_file densenet_pretrained.out
elif [ "$experiment_index" = "30" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model squeezenet --out_file squeezenet_pretrained.out
elif [ "$experiment_index" = "31" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/Pytorch_fine_tuning_Tutorial
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python main_fine_tuning.py --model mobilenet --out_file mobilenet_pretrained.out
elif [ "$experiment_index" = "32" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_contrastive_context.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/contrastive_context_1_style_hotswapped_material_50/ --hard_mining both --epochs 50 --checkpoint checkpoint_13.tar --batch_size 15 --material_names "main_xml_50_2"
elif [ "$experiment_index" = "33" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_contrastive_context.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/contrastive_context_2_style_hotswapped_material_50/ --hard_mining both --epochs 20 --checkpoint checkpoint_10.tar --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3"
elif [ "$experiment_index" = "34" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_contrastive_context.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/contrastive_context_3_style_hotswapped_material_50/ --hard_mining both --epochs 20 --checkpoint checkpoint_10.tar --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4"
elif [ "$experiment_index" = "35" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_contrastive_context.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/contrastive_context_4_style_hotswapped_material_50/ --hard_mining both --epochs 20 --checkpoint checkpoint_9.tar --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "36" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_from_scratch.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/lower_bound_material_50_from_scratch/ --epochs 50 --batch_size 25
elif [ "$experiment_index" = "37" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_from_scratch.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_from_scratch/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5"
elif [ "$experiment_index" = "38" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_repeat_2/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last"
elif [ "$experiment_index" = "39" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_non_contrastive_repeat_2/ --hard_mining none --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last"    
elif [ "$experiment_index" = "40" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_context_25/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last" --blur_context 25
elif [ "$experiment_index" = "41" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_target_25/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last" --blur_target 25
elif [ "$experiment_index" = "42" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_two_stream_cnn/ --hard_mining none --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last" --cnn_baseline 
elif [ "$experiment_index" = "43" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_two_stream_vit/ --hard_mining none --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last" --cnn_baseline 
elif [ "$experiment_index" = "44" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_context_125/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last" --blur_context 125
elif [ "$experiment_index" = "45" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_auto_load.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_blur_target_125/ --hard_mining both --epochs 50 --batch_size 10 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --checkpoint "last" --blur_target 125
elif [ "$experiment_index" = "46" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained/ --hard_mining both --epochs 100 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../
elif [ "$experiment_index" = "47" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50_not_pretrained/ --hard_mining both --epochs 100 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4" --test_annotations scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../
elif [ "$experiment_index" = "48" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_not_pretrained/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_50_2, main_xml_50_3" --test_annotations scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../
elif [ "$experiment_index" = "49" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_not_pretrained/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_50_2" --test_annotations scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../
elif [ "$experiment_index" = "50" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_yes_pretrained/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_50_2, main_xml_50_3" --test_annotations scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --pretrained
elif [ "$experiment_index" = "51" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_yes_pretrained/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_50_2" --test_annotations scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --pretrained
elif [ "$experiment_index" = "52" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_not_pretrained_2/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_50_2, main_xml_50_3" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "53" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_not_pretrained_2/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_50_2" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_52.tar
elif [ "$experiment_index" = "54" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_not_pretrained_3/ --hard_mining both --epochs 100 --batch_size 15 --material_names "main_xml_50_2" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../
elif [ "$experiment_index" = "55" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50_not_pretrained_3/ --hard_mining both --epochs 100 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_42.tar
elif [ "$experiment_index" = "56" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50_not_pretrained_3/ --hard_mining both --epochs 100 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_41.tar
elif [ "$experiment_index" = "57" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3/ --hard_mining both --epochs 100 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_39.tar
elif [ "$experiment_index" = "58" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/all_hotswapped_not_pretrained_3/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4, main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3"  --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_5.tar
elif [ "$experiment_index" = "59" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_viewpoint.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/all_hotswapped_not_pretrained_3_geometric_color/ --hard_mining both --epochs 100 --batch_size 30 --material_names "main_xml_viewpoint_2, main_xml_viewpoint_3, main_xml_viewpoint_4, main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3"  --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --geometric_transforms --color_transforms
elif [ "$experiment_index" = "60" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped_augmentations.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_geometric_color/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2" --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 5 --geometric_transforms --color_transforms --pretrained
elif [ "$experiment_index" = "61" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50_repeated/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2" --test_annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --test_imagedir ../ --test_frequency 5 --pretrained
elif [ "$experiment_index" = "62" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/scannet_synthetic_handmade_cleaned_test_set.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_fine_tuned/ --epochs 50 --batch_size 15 --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_10.tar    
elif [ "$experiment_index" = "63" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/handmade_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_handmade_fine_tuned/ --hard_mining both --epochs 200 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_9.tar
elif [ "$experiment_index" = "64" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/handmade_and_train_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_handmade_combined_scratch/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 5 --test_imagedir ../ --checkpoint checkpoint_20.tar 
elif [ "$experiment_index" = "65" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_handmade_combined_scratch_4_categories/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 1 --test_imagedir ../
elif [ "$experiment_index" = "66" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/handmade_main_xml_50_v3.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_not_pretrained_3_handmade_scratch_4_categories/ --hard_mining both --epochs 500 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5" --test_annotations ../openrooms/annotation_files/scannet_handmade_test_set.json --test_frequency 10 --test_imagedir ../ 
elif [ "$experiment_index" = "67" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50_and_lights_not_pretrained_3_handmade_combined_scratch_4_categories/ --hard_mining both --epochs 50 --batch_size 15 --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, main_xml_50_lights_1, main_xml_50_lights_2, main_xml_50_lights_3, main_xml_50_lights_4" --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set_4_categories.json --test_frequency 1 --test_imagedir ../ 
elif [ "$experiment_index" = "68" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/lower_bound_material_50_not_pretrained_3_handmade_combined_scratch_4_categories/  --epochs 50 --batch_size 15 --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set_4_categories.json --test_frequency 1 --test_imagedir ../ 
elif [ "$experiment_index" = "69" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/resnet_material_50_not_pretrained_3_handmade_combined_scratch_4_categories/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set_4_categories.json --test_imagedir ../ --test_frequency 1
elif [ "$experiment_index" = "70" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/vit_material_50_not_pretrained_3_handmade_combined_scratch_4_categories/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set_4_categories.json --test_imagedir ../ --test_frequency 1
elif [ "$experiment_index" = "71" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/resnet_material_50_not_pretrained_3_handmade_combined_scratch_4_categories_geometric_color/ --epochs 50 --batch_size 40 --model_name resnet --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set_4_categories.json --test_imagedir ../ --test_frequency 1 --geometric_transforms --color_transforms
elif [ "$experiment_index" = "72" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_simple_cnn_augmentations.py --annotations ../openrooms/annotation_files/handmade_and_train_4_categories_main_xml_50_v3_.json --imagedir ../ --outdir v3_output/vit_material_50_not_pretrained_3_handmade_combined_scratch_4_categories_geometric_color/ --epochs 50 --batch_size 40 --model_name vit --test_annotations ../openrooms/annotation_files/scannet_handmade_cleaned_test_set_4_categories.json --test_imagedir ../ --test_frequency 1 --geometric_transforms --color_transforms
elif [ "$experiment_index" = "73" ]; then
    cd /n/holylfs05/LABS/pfister_lab/Lab/coxfs01/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    module load GCC/8.2.0-2.31.1
    conda activate domain_adaptation
    python train_hotswapped.py --annotations ../openrooms/annotation_files/train_main_viewpoints_0_1_v3.json --imagedir ../ --outdir v3_output/4_styles_hotswapped_generalization_to_viewpoint/ --epochs 50 --batch_size 40 --test_annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --test_imagedir ../ --test_frequency 5 --pretrained --material_names "main_xml_50_2, main_xml_50_3, main_xml_50_4, main_xml_50_5, mainDiffMat_xml1"
fi
