#!/bin/bash
#SBATCH --array=0
#SBATCH --partition=seas_gpu
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=72:00:00
#SBATCH --output=slurm_outputs_scripts/resnet_baselines_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash resnet_baseline_ids.sh ${SLURM_ARRAY_TASK_ID}
