#!/bin/bash
#SBATCH --array=15,18,21
#SBATCH --partition=seas_gpu,gpu,gpu_requeue
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --output=slurm_outputs_scripts/data_diversity_ilab_v3_extreme_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash ilab_data_diversity_scripts_target_images_not_pretrained.sh ${SLURM_ARRAY_TASK_ID}
