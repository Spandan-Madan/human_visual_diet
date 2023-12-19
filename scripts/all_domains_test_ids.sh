experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_viewpoints_5_v3.json --imagedir ../ --outdir v3_output/all_hotswapped/ --weighted_prediction --batch_size 200 --outname ood_viewpoints --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "1" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_test_v3.json --imagedir ../ --outdir v3_output/all_hotswapped/ --weighted_prediction --batch_size 200 --outname ood_materials --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "2" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_lights_test_v3.json --imagedir ../ --outdir v3_output/all_hotswapped/ --weighted_prediction --batch_size 200 --outname ood_lights --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "3" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python test.py --annotations ../openrooms/annotation_files/scannet_test_set.json --imagedir ../ --outdir v3_output/all_hotswapped/ --weighted_prediction --batch_size 200 --outname scannet --config config.yaml --checkpoint checkpoint_20.tar
elif [ "$experiment_index" = "4" ]; then
      cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
      eval "$(conda shell.bash hook)"
      conda activate domain_adaptation
      python test.py --annotations ../openrooms/annotation_files/train_main_xml_50_v3_deformed_geometry.json --imagedir ../ --outdir v3_output/all_hotswapped/ --weighted_prediction --batch_size 200 --outname deformed_geometry --config config.yaml --checkpoint checkpoint_20.tar
fi
