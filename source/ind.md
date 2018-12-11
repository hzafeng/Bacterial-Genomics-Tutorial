
# Bacterial Genomic Tutorial

## 1. Get Data from NCBI
### 1.1 Assembly 
#### Download Reads via [SRA Toolkit](https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/)
#### Quality Contral 
* Use [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
* Use [Fastp](https://github.com/OpenGene/fastp)
#### Assembly
* [ABySS](https://github.com/bcgsc/abyss)
* [Velvet](https://github.com/dzerbino/velvet)
#### Assembly statics
* Use [Assembly-stats](https://github.com/sanger-pathogens/assembly-stats)

### 1.2 Download Genome Via Accession Number
According the [assembly_summary_genbank](ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_genbank.txt) in NCBI ftp site, we can get the genome through the organism name

## 2. Genome Annotation
* [Prodigal](https://github.com/hyattpd/Prodigal) 
* [Prokka](https://github.com/tseemann/prokka) 
* COG Annotation Use [Eggnog-mapper](https://github.com/jhcepas/eggnog-mapper)

## 3. Pan-core Gene analysis

Use [Roary](https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots)

## 4. ANI and AAI
* [PYANI](https://github.com/widdowquinn/pyani)
* [JSpecies](http://jspecies.ribohost.com/jspeciesws/)

## 5. Phylogenetic Tree Construction
### 5.1 Select Sequence Use to construct phylogenetic tree
* DNA or AA
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
