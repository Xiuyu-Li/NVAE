#!/bin/bash
#SBATCH -J nvae  # Job name
#SBATCH -o nvae%j.log  # Name of stdout output file (%j expands to jobId)
#SBATCH -e nvae%j.err  # Name of stderr output file
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xl289@cornell.edu
#SBATCH -N 1  # Total number of CPU nodes requested
#SBATCH -n 8  # Total number of CPU cores requrested
#SBATCH -t 120:00:00  # Run time (hh:mm:ss)
#SBATCH --mem=60000  # CPU Memory pool for all cores
#SBATCH --partition=cuvl --gres=gpu:2080ti:8 -w goodfellow
#SBATCH --get-user-env


bash run.sh artcifar-0529