# Volcano plot, Day 20 post-injury vs uninjured, limma-voom with quantile normalization.

library(DESeq2)
library(Biobase)
library(biomaRt)
library(limma)
library(edgeR)

day20 <- read.table("day20VSunin.txt", header = TRUE, row.names = 1)
groups <- read.table("data20.txt", header = TRUE, row.names = 1)

isexpr <- rowSums(cpm(day20)>1)>=3
x <- day20[isexpr,]
nf <- calcNormFactors(x)
gr <- groups$Group
design <- model.matrix(~ gr)

y <- voom(x,design,plot=TRUE, lib.size=colSums(x)*nf,normalize.method="quantile")

fit <- lmFit(y,design)
fit <- eBayes(fit)
topTable(fit, coef=2)

pdf("volcano20.pdf")
volcanoplot(fit,coef=2)
dev.off()
