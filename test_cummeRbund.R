# download CummeRbund package
source("https://bioconductor.org/biocLite.R")
biocLite("cummeRbund")
library(cummeRbund)
# set WD
setwd("/media/bryan/2Tb_Workspace/AP/RNA-seq_FVA")

# create a CummeRbund database from the Cuffdiff output
cuff_data <- readCufflinks('/media/bryan/2Tb_Workspace/AP/RNA-seq_v2/diff_out')
# plot the distribution of expression levels for each sample
csDensity(genes(cuff_data))
# compare the expression of each gene in two conditions with a scatter plot
csScatter(genes(cuff_data), 'C1', 'C2')
# create a volcano plot to inspect differentially expressed genes
csVolcano(genes(cuff_data), 'C1', 'C2')


# plot expression levels for genes of interest with bar plots
mygene <- getGene(cuff_data,'regucalcin')> expressionBarplot(mygene)
# plot individual isofrm expression levels of selected genes of interest with bar plots
expressionBarplot(isoforms(mygene))