#!/bin/bash
#SBATCH --array=0
#SBATCH --partition=seas_dgx1
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=2:00:00
#SBATCH --output=slurm_outputs_scripts/set_1_50_test_envmaps_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash set_1_50_ids_test_envmaps.sh ${SLURM_ARRAY_TASK_ID}
