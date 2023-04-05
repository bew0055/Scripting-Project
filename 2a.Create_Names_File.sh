#!/bin/bash

# Purpose: this script is used to prepare for the final analysis in R. The output produced here will be crucial for correctly labeling the final plot.
# make sure you make your script executable on the command line using the chmod +x command followed by the script name!

## It is always good practice to set your working directory within your script - done using the "cd" command and the pathway to the directory in which work is taking place.

## This is a pretty basic use of awk to take the first column from the plink formatted ".fam" file and copies it into its own file called names.txt - this provides the names of the samples included in the project



cd /Users/Britt/Desktop/Scripting_Final_Project/Scripting-Project

awk '{print $1}' example.fam > names.txt
