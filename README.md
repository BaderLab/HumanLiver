# Single cell RNA sequencing of human liver reveals distinct intrahepatic macrophage populations
Sonya A. MacParland,
    Jeff C. Liu,
    Xue-Zhong Ma,
    Brendan T. Innes,
    Agata M. Bartczak,
    Blair K. Gage,
    Justin Manuel,
    Nicholas Khuu,
    Juan Echeverri,
    Ivan Linares,
    Rahul Gupta,
    Michael L. Cheng,
    Lewis Y. Liu,
    Damra Camat,
    Sai W. Chung,
    Rebecca K. Seliga,
    Zigong Shao,
    Elizabeth Lee,
    Shinichiro Ogawa,
    Mina Ogawa,
    Michael D. Wilson,
    Jason E. Fish,
    Markus Selzner,
    Anand Ghanekar,
    David Grant,
    Paul Greig,
    Gonzalo Sapisochin,
    Nazia Selzner,
    Neil Winegarden,
    Oyedele Adeyi,
    Gordon Keller,
    Gary D. Bader,
    Ian D. McGilvray.  
Nature Communications, 2018 (in press).  
Data portal by [scClustViz](https://baderlab.github.io/scClustViz).  
## Abstract
The liver is the largest solid organ in the body and is critical for 
metabolic and immune functions. Surprisingly little is known about the cells 
that make up the human liver and its immune microenvironment. Here we report 
a map of the cellular landscape of the human liver using single cell RNA 
sequencing. We carefully fractionated fragile, fresh hepatic tissue from 
human livers to obtain viable parenchymal and non-parenchymal cells. Our 
single cell transcriptomics map reveals 20 discrete cell populations, and 
includes a description of distinct monocyte/macrophage populations in the 
human liver. We present a comprehensive view of the human liver at single 
cell resolution that outlines the characteristics of resident cells in the 
liver, and in particular provides a map of the human hepatic immune 
microenvironment. 

## Usage
You can install this package by running:
```{r}
install.packages("devtools")
devtools::install_github("BaderLab/HumanLiver")
```
It takes a while for this command to run, since data files are larger than your usual github code.

Then the data can be viewed in the [*scClustViz*](https://baderlab.github.io/scClustViz) Shiny app by running:
```{r}
viewHumanLiver()
```
Installing *org.Hs.eg.db* from Bioconductor is also suggested for annotation purposes:
```{r}
source("https://bioconductor.org/biocLite.R")
biocLite("org.Hs.eg.db")
```
*scClustViz* is a visualization tool for single-cell RNAseq designed to assess clustering results 
for biological relevance using a metric based on differential gene expression between clusters. It 
also has figures designed for the identification of clusters and their marker genes. See 
[the website](https://baderlab.github.io/scClustViz) and upcoming paper for more details.
