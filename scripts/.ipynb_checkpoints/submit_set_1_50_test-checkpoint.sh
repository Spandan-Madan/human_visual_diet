#!/bin/bash
#SBATCH --array=11-15
#SBATCH --partition=seas_gpu
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=2:00:00
#SBATCH --output=slurm_outputs_scripts/set_1_50_test_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash set_1_50_ids_test.sh ${SLURM_ARRAY_TASK_ID}
