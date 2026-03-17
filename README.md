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


### Run Locally
To run the analysis locally on your machine:
- First, download, create and activate the environment and dependencies using this file [environment.yaml](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/6bf9da9f5fb737fd5db5ddfdbaab3a02ec8917f1/scripts/environment.yaml)

```bash
conda env create -f environment.yaml
conda activate bacterial_genome ```

- Download the bash script [analysis.sh](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/125bbdefa0b09b8c73d0bcc79c224d1f3ebcda96/scripts/analysis.sh)
- Make it executable and run it on your command line terminal.

## 📝 Results

### General Overview
| Metric | Value |
| :--- | :--- |
| **Organism** | *Modicisalibacter* sp. |
| **Assembly Size** | 3.5 mb |
| **GC Content** | 67.25% |
| **N50** | 145788 bp |
| **Number of CDS** | 3234 | 
| **rRNA** | 3 |
| **tRNA** | 74 |

## Metabolic Mapping
### Overview of the Metabolic Potential of the Bacterium based on COGs
![image alt](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/main/plots/cog_count_barchart.png?raw=true)

### Hydrocarbon-Degradation Atlas
The functional annotations of the bacterial genome revealed the presence of genes coding for essential enzymes in metabolic pathways for the degradation of various hydrocarbons such as, benzoate, naphtalene, xylene and toluene. 
#### Benzoate
![image alt](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/main/plots/ko00362.Benzoate.png?raw=true)
#### Naphtalene
![image alt](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/main/plots/ko00626.Napth.png?raw=true)
#### Xylene
![image alt](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/main/plots/ko00622.xylene.png?raw=true)
#### Toluene
![image alt](https://github.com/JimmySmilez/Bacterial_Genome_Project/blob/main/plots/ko00623.toluene.png?raw=true)  

## Biological Insight
The result of this bioinformatic analysis reveals that this bacterial strain can degrade a number of hydrocarbons. It can be used as a member of a consortium to degrade complex environmental pollutants such as, produced water and crude oil.

This hypothesis should be validated in the lab, by growing the bacterium in media with these hydrocarbons as the only carbon source. 
