#!/bin/bash
#SBATCH --array=16-27
#SBATCH --partition=seas_gpu,gpu,gpu_requeue
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --time=2:00:00
#SBATCH --output=slurm_outputs_scripts/simple_cnn_ilab_v3_extreme_%a_%A.log   # Standard output and error log
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=spandan_madan@g.harvard.edu

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
bash test_simple_cnn_baselines_ilab_extreme.sh ${SLURM_ARRAY_TASK_ID}
