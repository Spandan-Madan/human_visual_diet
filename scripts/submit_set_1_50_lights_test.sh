#!/bin/bash
#SBATCH --array=5,6
#SBATCH --partition=seas_gpu,gpu,gpu_requeue
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --output=slurm_outputs_scripts/set_1_50_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash set_1_50_lights_ids_test.sh ${SLURM_ARRAY_TASK_ID}
