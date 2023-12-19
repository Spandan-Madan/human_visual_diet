#!/bin/bash
#SBATCH --array=3-5
#SBATCH --partition=seas_gpu
#SBATCH --mem=16G
#SBATCH --gres=gpu:1
#SBATCH --time=0:10:00
#SBATCH --output=slurm_outputs_scripts/simple_cnn_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash simple_cnn_scannet_test.sh ${SLURM_ARRAY_TASK_ID}
