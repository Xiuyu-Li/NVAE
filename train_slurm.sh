#!/bin/bash
#SBATCH -J nvae  # Job name
#SBATCH -o nvae%j.log  # Name of stdout output file (%j expands to jobId)
#SBATCH -e nvae%j.err  # Name of stderr output file
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xl289@cornell.edu
#SBATCH -N 1  # Total number of CPU nodes requested
#SBATCH -n 8  # Total number of CPU cores requrested
#SBATCH -t 96:00:00  # Run time (hh:mm:ss)
#SBATCH --mem=55000  # CPU Memory pool for all cores
#SBATCH --partition=gpu --gres=gpu:3090:8
#SBATCH --get-user-env


bash run.sh artcifar-0528