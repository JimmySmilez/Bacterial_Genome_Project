# Hydrocarbon-Degrading Bacterium: De Novo Genome Assembly & Metabolic Profiling
## 📊 Data Acquisition
The raw reads that were utilized in this project were obtained from NCBI SRA with accession number SRR10525457. The study was originally published by Ajagbe et al. 2025 (https://pubmed.ncbi.nlm.nih.gov/39714141/). 

## 🧬 Analysis Pipeline

The genome was processed using a standard de novo assembly and annotation workflow:

1. **Quality Control:** Raw reads were assessed using `FastQC` and trimmed/filtered using `fastp`.
2. **De Novo Assembly:** Reads were assembled into contigs using `SPAdes`.
3. **Structural Annotation:** Predicted genes and features were identified using `Prokka`.
4. **Functional Annotation:**
   - **COGs:** Classified using `COGclassifier`.
   - **Metabolic Pathways:** Annotated via `GhostKOALA` and mapped using `PathView` for KEGG pathway visualization.
  
### 🛠️ Bioinformatics Software Stack

| Task | Tool | Version | Purpose |
| :--- | :--- | :---: | :--- |
| **QC** | `fastp` | v1.0.1 | Read filtering & adapter trimming |
| **Assembly** | `SPAdes` | v4.2.0 | De novo genome assembly |
| **Annotation** | `Prokka` | v1.15.6 | Structural gene prediction |
| **Metabolic** | `PathView` | v1.42.0 | KEGG pathway visualization |


## 📝 Results

### General Overview
| Metric | Value |
| :--- | :--- |
| **Organism** | *Modicisalibacter* sp. |
| **Assembly Size** | 3.5mb |
| **GC Content** | 67.25% |
| **N50** | 145788 bp |
| **Number of CDS** | 3234 | 
| **rRNA** | 3 |
| **tRNA** | 74 |

## Metabolic Mapping
### Overview of the Metabolic Potential of the Bacterium based on COGs
![image alt](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/main/plots/cog_count_barchart.png?raw=true)
