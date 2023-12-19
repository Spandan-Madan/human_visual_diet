#!/bin/bash
#SBATCH --array=0-11
#SBATCH --partition=seas_gpu,gpu,gpu_requeue,cox
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --output=slurm_outputs_scripts/dg_variances_all_envs_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu
#SBATCH --mem=8000

eval "$(conda shell.bash hook)"
conda activate python_env1 
bash dg_variances_ids.sh ${SLURM_ARRAY_TASK_ID}
