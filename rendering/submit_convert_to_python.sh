#!/bin/bash
#SBATCH --array=0
#SBATCH --partition=cox
#SBATCH --mem=8G
#SBATCH --time=72:00:00
#SBATCH --output=slurm_output/convert_to_png_%A_%a.out   # Standard output and error log
#SBATCH --error=slurm_output/convert_to_png_%A_%a.err

eval "$(conda shell.bash hook)"
conda activate domain_adaptation
python convert_rgbe_to_png.py --meta_folder renders_scannet_realistic/xml/
