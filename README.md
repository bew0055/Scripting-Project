# Scripting-Project
Repository for Scripting 7180 Final Project

## Brief PSA
The reproducible part of this project is a small group of sample data that is being utilized to showcase the overall jist of the scripts and their purposes. My actual project involves over 3200 whole genome sequences and has way too much data for GitHub to handle. For the sake of explanations, I will provide a walkthrough for the example files and provide further details into the actual project I am producing outside of this class. I will provide a file with the final outputs from the larger project in its own directory. While it may not have much to do with the outputs that should be achieved from the the class project, it gives insight into how much can be done with the Admixture program in a research setting. All of the work I produced was done with the help of the Auburn University HPC Easley Cluster, which allowed for all of these large amount of data to be processed. Do not worry, the example files are simply run on a home computer!


## Downloads
To download the packages for Admixture, go to https://dalexander.github.io/admixture/download.html - the package options come in Linux and MacOSX versions.

To download R Studio and R, all packages and versions can be found at https://posit.co/download/rstudio-desktop/

To download the software packages for Plink, please visit https://www.cog-genomics.org/plink/ - utilize whichever of the "Stable" binary downloads apply to your operating system. I used Plink 1.9 for this example. In my actual project, I utilize both versions 1.9 and 2.0. (You can just download version 1.9).

## Purpose of This Project and Overview of Scripts/Packages
**The goal of this project is to run population based ancestry analysis on samples to see what percentage of their makeup comes from different populations.** 

This prjoect will showcase four different scripts that will be written in bash (3 scripts) and R (1 script) formats. The scripts will be named starting with a number. The numbers indicate the correct order in which to use the scripts through the project (i.e 1,2,2a,3). 

**Script 1**: The purpose of this script is to convert the original VCF file with the sample data into Plink formatted files. These files include a .bim,.bam,.fam,.nosex,and a .log file. These specific format types (mainly the .bim/.bam/.fam) files are used in many bio softwares to run analysis. One of these softwares is the Admixture package I use in this project.

**Script 2**: Next up is a script that accesses the Admixture package and allows for it to run its analysis on our correctly formatted files. This will produce both a .P and a .Q file. The .Q file is a matrix formatted file that contains the breakdown of each sample into its different populations. The .P file contains the population allele frequencies for each SNP. For the purpose of this project, the .Q file is what will be used in making the R plots.

**Script 2a**: This line of code is used to create a "Names Text File." This will be used in the R code in order to label the columns produced. It uses the created plink files and pulls the sample names straight from there. 

**Script 3**: Finally, this is the plot production script. It runs using R, so make sure that is installed. It should produce two different plots. The first one is a "rough draft" while the second is a more condensed and cleaned up final version of the data. 

**Plink**: The plink package is downloaded in order to convert the original VCF file format of the data into a form that is more widely accepted by many biological data analysis tools. There are many other uses that Plink can perform, but for the sake of this tutorial, the main purpose is for file conversion.

**Admixture**: This package is the main bread and butter of the project. This is the software that performs the ancestry population analysis on our data. 

**R and R Studio**: The R softwares are used for plotting and producing a graphic that showcases the results of the analysis on the data in a way that is easy to visualize. I have been taught to use R studio, so I suggest installing them both. The script is able to be executed on the command line;however, when I created the plots I did so within the R Studio program itself.

##Final Output##

The end goal of this project is to produce the two Admixture files (.P and .Q files) and then to use the .Q file in order to create plots in R. If you are wondering if you produced the work correctly, please refer to the "Expected Output for Example Files" folder. This folder holds all of the output produced when I ran the example files using the scripts provided for you.

This ReadMe should give you a detailed outline of what this project entails. I wish you all success in reproducing this project and if you'd like to check out the scripts and final plot produced from my larger overarching project, feel free to check out the "
