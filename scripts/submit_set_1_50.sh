#!/bin/bash
#SBATCH --array=78-80
#SBATCH --partition=seas_gpu
#SBATCH --gres=gpu:1
#SBATCH --time=72:00:00
#SBATCH --output=slurm_outputs_scripts/set_1_50_%A_%a.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu
#SBATCH --open-mode=append
#SBATCH --mem-per-cpu=96G

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash set_1_50_ids.sh ${SLURM_ARRAY_TASK_ID}
