
# Bacterial Genomic Tutorial

## 1. Acquire Data

### 1.1 Assembly 

#### Download Reads via [SRA Toolkit](https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/)

Use  **prefetch** download SRA data, and use **fasterq-dump** to convert reads into Fastq format.

#### Quality Contral 

* Use [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)  + [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic)


* Use [Fastp](https://github.com/OpenGene/fastp)
Fastp is a Ultra-fast all-in-one FASTQ preprocessor(QC/adapters/trimming/filtering/splitting...)

#### Assembly

* [ABySS](https://github.com/bcgsc/abyss)

* [Velvet](https://github.com/dzerbino/velvet)

#### Assembly statics
* Use [Assembly-stats](https://github.com/sanger-pathogens/assembly-stats)


### 1.2 Download Genome Via Accession Number
According the [assembly_summary_genbank](ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_genbank.txt) in NCBI ftp site, we can get the genome through the organism name

A example of Python script used to download all *Exiguobacterium* genome in Genbank database
~~~Python
import pandas as pd
f=pd.read_table("assembly_summary_genbank.txt",sep='\t',header=1)
for i in f['Exiguobacterium' in f['organism_name']]['ftp_path']:
    os.system('wget '+i+'_genomic.fna.gz')
~~~

## 2. Genome Annotation
* [Prodigal](https://github.com/hyattpd/Prodigal) : Protein-coding gene prediction for prokaryotic genomes.


* [Prokka](https://github.com/tseemann/prokka) : Rapid prokaryotic genome annotation


## 3. Gene family analysis
### 3.1 Pan&core gene 
Use [Roary](https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots)
### 3.2 Ortholog gene family analysis

[FastOrtho](https://github.com/olsonanl/FastOrtho)


## 4. ANI and AAI
### 4.1 ANI
* [PYANI](https://github.com/widdowquinn/pyani)
* [FastANI](https://github.com/ParBLiSS/FastANI)
### 4.2 AAI
* [CompareM](https://github.com/dparks1134/CompareM)


## 5. Phylogenetic Tree Construction

### 5.1 Sequence Use to construct phylogenetic tree
* DNA or AA sequence
* Marker Gene or Core gene 

### 5.2 Model Select
* [Jmodeltest](https://github.com/ddarriba/jmodeltest2) for nucl seq
* [ProtTest](https://github.com/ddarriba/prottest3) for aa seq
* [ModelFinder](http://www.iqtree.org/) for Both aa seq and nucl seq

### 5.3 Use connected single copy core gene to inference phylogenetic tree

#### 5.3.1 Get single copy gene by [Roary](https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots) pipeline

#### 5.3.2 Use Maximum Likelihood Methods
* Use [PhyML](http://www.atgc-montpellier.fr/phyml/) for aa Sequence 
* Use [RAxml](https://github.com/stamatak/standard-RAxML) for nucl sequence 
* Use [FastTree](http://www.microbesonline.org/fasttree/)(ML-likely)
* Bayesian Tree

# Execsice
