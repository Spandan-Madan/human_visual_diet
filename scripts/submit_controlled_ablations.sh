#!/bin/bash
#SBATCH --array=20,9
#SBATCH --partition=cox,seas_gpu,seas_dgx1
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=24:00:00
#SBATCH --output=slurm_outputs_scripts/ablations_controlled_%A_%a.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash controlled_ablation_ids.sh ${SLURM_ARRAY_TASK_ID}
