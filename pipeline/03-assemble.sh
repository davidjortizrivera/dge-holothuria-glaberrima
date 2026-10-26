#!/bin/bash
# Step 3: de novo transcriptome assembly of the normalized reads with Trinity 2.4.0 (single-end).
# Written for the UPR HPC cluster (SLURM); paths are from the original run.
#SBATCH --job-name=david_trinity
#SBATCH --mail-user=YOUR_EMAIL
#SBATCH --mail-type=ALL
#SBATCH --workdir=/work/humberto/dortiz/trinity/
#SBATCH --error=/work/humberto/dortiz/tools/trin.e
#SBATCH --output=/work/humberto/dortiz/tools/trin.o

/work/humberto/dortiz/tools/trinityrnaseq-Trinity-v2.4.0/Trinity --no_bowtie --bypass_java_version_check --seqType fq --max_memory 64G --CPU 8 --single /work/humberto/dortiz/normalize/SRR490649_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490752_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490864_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490918_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490920_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490923_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490669_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490772_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490868_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490919_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490921_trimmed.fastq.keep,/work/humberto/dortiz/normalize/SRR490924_trimmed.fastq.keep --output /work/humberto/dortiz/trinity
