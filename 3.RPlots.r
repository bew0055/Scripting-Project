#!/usr/bin/env Rscript

# Purpose: This script serves to create two plots in R. The first is a rough outline and the second is a more refined final version. Both are used to represent the data produced in this example project.
# make sure you make your script executable on the command line using the chmod +x command followed by the script name!


## It is always good practice to set your working directory within your script - done using the "cd" command and the pathway to the directory in which work is taking place.

## For the first block of code, this will create the first plot.
# Firstly, using the "png" command tells the computer that there will be a png file created to the directory we are working in.
# Your working directory will be different than mine - be sure to change it to where your work is being done!
# Next, using the .Q file created from the Admixture script, we will read that data into R stored as a variable called tbl
# The colnames function assigns what will be the legend breakdown in the finalized graph
# The variable names uses the names.txt file created in script 2a to store those sample names for labels in a step to come.
# We store the barplot created with tricolored bar break downs and a Y axis label as bp.
# Next the text function adds specifics to the graph: cex - character size, x - our variable bp, y - the number here shows where the text labels should be added on the axis, xpd - allows for plotting/characters to occur outside of plotting area, and srt - rotates the text 45 degrees (the x axis labels)
# Lastly, it is important to use dev.off() in order to shut down the current plot so there is no overlap between plots created.

## The second block of code creates the final, more cleaned up plot
# Just like before, use png ("name of output file", height of file, width of graphic) to tell the computer a png file will be produced to the directory you are working in.
# This time I used a library within R Studio. ***You may need to install this within the GUI program R/RStudio*** - to do so, open your program, go under the tab "Packages" and search for ggplot2. If it is there, you are fine, if not, you will need to install it using the "Install" button under the "Packages" tab.
# Once ggplot is in your R/RStudio system, you can load it using the library command. This will also be done for reshape (you may also need to install this library - same way as ggplot as described above).
# Next is adding a new column to tbe variable tbl created in the above plot. This will add all of the names stored in the names variable to a new column in the tbl variable.
# Then we use the melt function to reorganize the data into a new variable called tbl2. This will have an input for each sample three times (one for each variable a b or c - defined in the first part) it will then assign the value of each from the outputs of the Admixture Analysis.
# The next step is using the ggplot syntax to make our actual final plot. This will include axis labels, angled text, a legend for the variable names, and a bar graph that is split into three colors, which are determined by variable.
# Lastly, it is important to use dev.off() in order to shut down the current plot so there is no overlap between plots created.


png("First_Example_Plot.png",height=800,width=800)
setwd("/Users/Britt/Desktop/Scripting_Final_Project/Scripting-Project")
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

