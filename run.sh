#!/bin/bash
#SBATCH --job-name=Cuda_test
#SBATCH --output=cudatest.log
#SBATCH --error=cudatest.log
#SBATCH --time=00:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=1G
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=fathalla@b-tu.de
 

module load pyTorch/cu124
conda activate MLEnv
 


 

python cudatest.py
 
