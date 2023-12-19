#!/bin/bash
#SBATCH --array=0-3
#SBATCH --partition=cox
#SBATCH --mem=8G
#SBATCH --time=72:00:00
#SBATCH --output=slurm_output/make_train_crops_%A_%a.out   # Standard output and error log
#SBATCH --error=slurm_output/make_train_crops_%A_%a.err
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
python make_material_crops_train_styles.py ${SLURM_ARRAY_TASK_ID}
