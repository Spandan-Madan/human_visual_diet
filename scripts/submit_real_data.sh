#!/bin/bash
#SBATCH --array=0-3
#SBATCH --partition=seas_gpu
#SBATCH --gres=gpu:1
#SBATCH --time=5:00:00
#SBATCH --output=slurm_outputs_scripts/real_data_%A_%a.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu
#SBATCH --open-mode=append
#SBATCH --mem-per-cpu=96G

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash real_data.sh ${SLURM_ARRAY_TASK_ID}
