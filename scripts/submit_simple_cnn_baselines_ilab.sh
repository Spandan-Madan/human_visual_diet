#!/bin/bash
#SBATCH --array=0-14
#SBATCH --partition=seas_gpu
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --output=slurm_outputs_scripts/simple_cnn_ilab_v3_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash simple_cnn_baselines_ilab.sh ${SLURM_ARRAY_TASK_ID}
