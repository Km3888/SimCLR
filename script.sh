#!/bin/sh
#
#SBATCH --verbose
#SBATCH --time=100:00:00
#SBATCH --nodes=1
#SBATCH --mem=12GB
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=ALL # select which email types will be sent
#SBATCH --mail-user=km3888@nyu.edu # put your email here if you want emails

#SBATCH --job-name=simclr
#SBATCH --output=run_%A_%a.out # %A is SLURM_ARRAY_JOB_ID, %a is SLURM_ARRAY_TASK_ID
#SBATCH --error=run_%A_%a.err

# SBATCH --gres=gpu:p40:1 # uncomment this line to request for a gpu if your program uses gpu


module load anaconda3/5.3.1 cuda/9.2.88
source activate SimCLR

python run.py

