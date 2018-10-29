# download CummeRbund package with the following lines:
#   source("https://bioconductor.org/biocLite.R")
#   biocLite("cummeRbund")

require(cummeRbund)
require(ggpubr)
setwd("~/git/clip-on/")

# create a CummeRbund database from the Cuffdiff output
cuff_data2 <- readCufflinks('diff_out_std/')
# plot the distribution of expression levels for each sample
csDensity(genes(cuff_data2))
# compare the expression of each gene in two conditions with a scatter plot
csScatterMatrix(genes(cuff_data2))
# create a volcano plot to inspect differentially expressed genes
csVolcanoMatrix(genes(cuff_data2))

# plot expression levels for genes of interest with bar plots
getGene(cuff_data,'hbb') %>% expressionBarplot()
# plot individual isoform expression levels of selected genes of interest with bar plots
expressionBarplot(isoforms(mygene))

browseVignettes('cummeRbund')
