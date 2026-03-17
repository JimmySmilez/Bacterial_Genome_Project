#!/bin/bash 

# Variables
ACCESSION = "SRR10525457"

# Data Acquisition
fastq-dump --split-files $ACCESSION 

# Rename Files for Clarity
mv ${ACCESSION}_1.fastq Read_1.fastq
mv ${ACCESSION}_2.fastq Read_2.fastq

# Quality Control
fastqc Read_1.fastq Read_2.fastq -o .
fastp -i Read_1.fastq -I Read_2.fastq -o trimmed_read_1.fastq -O trimmed_read_2.fastq -g -q 30

# Read Assembly and Evaluation
spades.py -o Spades_Output -1 trimmed_read_1.fastq -2 trimmed_read_2.fastq
quast.py Spades_Output/scaffolds.fasta -o Quast_Output

# Annotations
prokka --prefix Bacterium.V1 --locustags BV1 --kingdom Bacteria --outdir Prokka_Output Spades_Output/scaffolds.fasta
COGclassifier -i Prokka_Output/Bacterium.V1.faa -o COG_Output
