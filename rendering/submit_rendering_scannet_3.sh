#!/bin/bash
#SBATCH --array=0-1300
#SBATCH --partition=seas_dgx1
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=4:00:00
#SBATCH --output=slurm_output/rendering_scannet_50_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash scene_render_ids_scannet_3.sh ${SLURM_ARRAY_TASK_ID}