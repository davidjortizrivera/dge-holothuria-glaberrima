# MDS plot of the 8 Illumina samples (Day 2, Day 12, Day 20, uninjured) using edgeR.

library(methods)
library(Biobase)
library(biomaRt)
library("edgeR")

files <- c("SRR490924_quant.counts",
           "SRR490923_quant.counts",
	   "SRR490921_quant.counts",
	   "SRR490920_quant.counts",
	   "SRR490919_quant.counts",
	   "SRR490918_quant.counts",
	   "SRR490868_quant.counts",
	   "SRR490864_quant.counts")

labels=c("SRR490924","SRR490923",
	 "SRR490921","SRR490920",
	 "SRR490919", "SRR490918", 
         "SRR490868", "SRR490864")

data <- readDGE(files)
group <- c(rep("Day_20_Post-injury", 2), rep("Day_12_Post-injury", 2), rep("Day_2_Post-injury", 2), rep("Uninjured_Radial_Organ",2))
dge = DGEList(counts=data, group=group)
dge <- estimateCommonDisp(dge)
dge <- estimateTagwiseDisp(dge)

pdf("MDS.pdf")
plotMDS(dge, labels=labels, xlab = "mds[1]", ylab = "mds[2]")
dev.off()
