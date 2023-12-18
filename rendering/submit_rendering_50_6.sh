#!/bin/bash
#SBATCH --array=0-1300
#SBATCH --partition=seas_dgx1
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=5:00:00
#SBATCH --output=slurm_output/rendering_50_6_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash scene_render_ids_50_6.sh ${SLURM_ARRAY_TASK_ID}
