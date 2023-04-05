#!/bin/bash

#Purpose: This script serves to turn the original VCF formatted file into plink formatted files in order for further analysis to take place.
# make sure you make your script executable on the command line using the chmod +x command followed by the script name!


## It is always good practice to set your working directory within your script - done using the "cd" command and the pathway to the directory in which work is taking place. 
# Your working directory will be different than mine - be sure to change it to where your work is being done!

## The first part of the actual script utilizes the pathway to the executable plink file - when you download the plink package one of the files within will be called "plink" and will be the executable file in question.
## Your pathway will vary depending on the directory your files are in (it will not be the same as mine) - find the directory with "plink" in it by using the command pwd in the directory

## The next parts of the script are plink arguments.
# First is the --vcf flag, this specifies the file input is in a VCF file format. In this case, the VCF is provided for you by me!
# The second flag is --make-bed, for this flag it just specifies that the output will be in plink format (outputs are .bim/.bam/.fam files as well as a .log and .nosex files)
# Next flag is --out, all this does is specify what you want your output files to be named (i.e one output from this will be example.fam or example.log)
# Finally is the --allow-extra-chr flag. This allows for plink to recognize what they deem to be "unconventional" chromosome codes. Basically, it allows for the program to process data if it's named outside of standard conventions.



cd /Users/Britt/Desktop/Scripting_Final_Project/Scripting-Project

/Users/Britt/Desktop/Scripting_Final_Project/Scripting-Project/plink_mac_20230116/plink --vcf example.vcf --make-bed --out example --allow-extra-chr
