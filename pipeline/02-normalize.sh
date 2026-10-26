#!/bin/bash
# Step 2: digital normalization of the trimmed reads with khmer (normalize-by-median, k=20, C=20).
# Written for the UPR HPC cluster (SLURM); paths are from the original run.
#SBATCH --job-name=david_norm
#SBATCH --mail-user=YOUR_EMAIL
#SBATCH --mail-type=ALL
#SBATCH --workdir=/work/humberto/dortiz/trimmed
#SBATCH --error=/work/humberto/dortiz/trimmed/normalize.e
#SBATCH --output=/work/humberto/dortiz/normalize.o

module load python2
. /work/humberto/asanquiche/tools/khmerenv/bin/activate khmer

for file in /work/humberto/dortiz/trimmed/*
do

echo working on $file >> normjob
normalize-by-median.py -k 20 -C 20 -x 6e9 $file
done;

deactivate
