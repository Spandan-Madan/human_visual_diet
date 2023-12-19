experiment_index=$1
echo $experiment_index

if [ "$experiment_index" = "0" ]; then
    cd /n/pfister_lab2/Lab/spandan/contextual_domain_adaptation/WhenPigsFlyContext
    eval "$(conda shell.bash hook)"
    conda activate domain_adaptation
    python train.py --annotations ../openrooms/annotation_files/train_main_xml_50_envmaps_v3.json --imagedir ../ --outdir v3_output/lower_bound_envmaps_50/ --epochs 50 --batch_size 15
fi
