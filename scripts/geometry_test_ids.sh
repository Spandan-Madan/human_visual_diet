experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/lower_bound_viewpoints_0_1/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_1/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_2/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/viewpoint_hotswapped_3/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "4" ]; then
      cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
      eval "$(conda shell.bash hook)"
      conda activate domain_adaptation
      python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/lower_bound_material_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "5" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/1_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "6" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/2_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "7" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/3_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "8" ]; then
      cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
      eval "$(conda shell.bash hook)"
      conda activate domain_adaptation
      python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/4_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "9" ]; then
      cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
      eval "$(conda shell.bash hook)"
      conda activate domain_adaptation
      python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/5_style_hotswapped_material_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "10" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/lower_bound_lights_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "11" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/one_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "12" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/two_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "13" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/three_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "14" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/four_hotswapped_light_50/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
fi
