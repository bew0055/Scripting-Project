#!/usr/bin/env Rscript

png("First_Example_Plot.png",height=800,width=800)
setwd("/Users/Britt/Desktop/Scripting_Final_Project")
tbl=read.table("example.3.Q")
colnames(tbl) = c('a', 'b', 'c')
names = read.table("names.txt")[,1]
bp=barplot(t(as.matrix(tbl)), col=rainbow(3),xlab="", ylab="Ancestry", border=NA)
text(cex=1, x=bp, y=-.08, names, xpd=TRUE, srt=45)
dev.off()

png("Final_Example_Plot.png",height=800,width=800)
library(ggplot2)
library(reshape)
tbl$names=names
tbl2=melt(tbl, id.vars="names")
ggplot(data=tbl2, aes(x=names, y=value, fill=variable)) + xlab("Sample Names") +ylab("Ancestry Percentage")+geom_bar(stat="identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1))
dev.off()

