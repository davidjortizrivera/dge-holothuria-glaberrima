#!/bin/bash
# Step 5: quantify transcript abundance for each sample against the index with Salmon.
# Written for the UPR HPC cluster (SLURM); paths are from the original run.
#SBATCH --job-name=david_salmon
#SBATCH --mail-user=YOUR_EMAIL
#SBATCH --mail-type=ALL
#SBATCH --workdir=/work/humberto/dortiz/salmon/
#SBATCH --error=/work/humberto/dortiz/quant.e
#SBATCH --output=/work/humberto/dortiz/quant.o

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490649_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490649_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490752_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490752_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490864_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490864_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490918_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490918_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490920_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490920_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490923_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490923_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490669_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490669_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490772_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490772_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490868_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490868_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490919_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490919_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490921_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490921_quant ;

/work/humberto/dortiz/tools/Salmon-0.8.2_linux_x86_64/bin/salmon quant -i /work/humberto/dortiz/salmon/pepino_index -l A -r /work/humberto/dortiz/normalized/SRR490924_trimmed.fastq -o /work/humberto/dortiz/salmon/SRR490924_quant
