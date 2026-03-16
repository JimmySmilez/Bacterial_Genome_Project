# Download the Dataset
fastq-dump https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR10525457/SRR10525457
# Rename the downloaded files Read_1.fastq and Read_2.fastq

# Quality Control
fastqc *.fastq
fastp -i Read_1.fastq  -I Read_2.fastq  -o R1.fastq  -O R2.fastq -g -q 30 

# Read Assembly
spades.py -o Spades_Output -1 R1.fastq -2 R2.fastq
Quast.py Spades_output/scaffolds.fasta -o Qaust_Output

# Annotations
prokka --prefix Bacterium.V1 --locustags BV1 --kingdom Bacteria --outdir Prokka_Output Spades_Output/contigs.fasta
COGclassifier -i Prokka_Output/proteins.faa -o COG_Output