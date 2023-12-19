#!/bin/bash
#SBATCH --array=0-11
#SBATCH --partition=seas_gpu,gpu,cox
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --output=slurm_outputs_scripts/stdev_dg_baselines_all_envs_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate python_env1
bash dg_baseline_ids_viewpoints.sh ${SLURM_ARRAY_TASK_ID}
