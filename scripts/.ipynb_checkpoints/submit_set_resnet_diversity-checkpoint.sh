#!/bin/bash
#SBATCH --array=0-5
#SBATCH --partition=seas_gpu,gpu,cox
#SBATCH --gres=gpu:1
#SBATCH --time=72:00:00
#SBATCH --output=slurm_outputs_scripts/set_1_50_%A_%a.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu
#SBATCH --open-mode=append
#SBATCH --mem=8000

eval "$(conda shell.bash hook)"
conda activate python_env1
bash set_resnet_diversity.sh ${SLURM_ARRAY_TASK_ID}
