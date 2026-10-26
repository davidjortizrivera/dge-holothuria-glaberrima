# MA plot, Day 2 post-injury vs uninjured, edgeR exact test (red: FDR < 0.2).

library(methods)
library(Biobase)
library(biomaRt)
library("edgeR")

files <- c("SRR490919_quant.counts",
		       "SRR490918_quant.counts",
		       "SRR490868_quant.counts",
		       "SRR490864_quant.counts")

labels=c("SRR490919", "SRR490918", 
         "SRR490868", "SRR490864")

data <- readDGE(files)
group <- c(rep("Day_2_Post-injury", 2), rep("Uninjured_Radial_Organ",2))
dge = DGEList(counts=data, group=group)
dge <- estimateCommonDisp(dge)
dge <- estimateTagwiseDisp(dge)

et <- exactTest(dge, pair=c("Day_2_Post-injury", "Uninjured_Radial_Organ"))
etp <- topTags(et, n=100000)
etp$table$logFC = -etp$table$logFC
pdf("ma-plot-day-2.pdf")
plot(
  etp$table$logCPM,
  etp$table$logFC,
  xlim=c(-3, 20), ylim=c(-12, 12), pch=20, cex=.3,
  col = ifelse( etp$table$FDR < .2, "red", "black" ),
  xlab = "A",
  ylab = "M")
dev.off()
