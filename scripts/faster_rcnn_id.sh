experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_v3_fastercnn.json --imagedir ../../../../ --outdir material_transfer_fasterrcnn --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_test_v3_fastercnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 30000 --save_frequency 5000
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_viewpoints_0_1_v3_fasterrcnn.json --imagedir ../../../../ --outdir viewpoint_transfer_fasterrcnn --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_viewpoints_5_v3_fasterrcnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 30000 --save_frequency 5000
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_lights_v3_fasterrcnn.json --imagedir ../../../../ --outdir light_transfer_fasterrcnn --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_lights_test_v3_fasterrcnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 30000 --save_frequency 5000
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_v3_combined_fasterrcnn.json --imagedir ../../../../ --outdir combined_material_transfer_fasterrcnn --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_test_v3_fastercnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 10000 --save_frequency 2500
elif [ "$experiment_index" = "4" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_v3_fastercnn.json --imagedir ../../../../ --outdir material_transfer_fasterrcnn_from_scratch --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_test_v3_fastercnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 30000 --save_frequency 5000 --scratch
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_viewpoints_0_1_v3_fasterrcnn.json --imagedir ../../../../ --outdir viewpoint_transfer_fasterrcnn_from_scratch --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_viewpoints_5_v3_fasterrcnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 30000 --save_frequency 5000 --scratch
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_lights_v3_fasterrcnn.json --imagedir ../../../../ --outdir light_transfer_fasterrcnn_from_scratch --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_lights_test_v3_fasterrcnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 30000 --save_frequency 5000 --scratch
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_v3_combined_fasterrcnn.json --imagedir ../../../../ --outdir combined_material_transfer_fasterrcnn_from_scratch --num_classes 13 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_test_v3_fastercnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 10000 --save_frequency 2500 --scratch
elif [ "$experiment_index" = "8" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext/Cut-Paste/training-code/faster-rcnn/
    eval "$(conda shell.bash hook)"
    conda activate faster_rcnn_env
    python finetune.py --annotations ../../../../openrooms/annotation_files/train_main_xml_50_v3_fastercnn.json --imagedir ../../../../ --outdir material_transfer_scratch_scannet --num_classes 4 --test_annotations ../../../../openrooms/annotation_files/train_main_xml_50_test_v3_fastercnn.json --test_imagedir ../../../../ --test_frequency 5000 --iters 10000 --save_frequency 2500 --scratch
f
fi
