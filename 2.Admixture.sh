#!/bin/bash

#Purpose: To run population analysis and generate data using our previously created plink formatted files.
# make sure you make your script executable on the command line using the chmod +x command followed by the script name!


## It is always good practice to set your working directory within your script - done using the "cd" command and the pathway to the directory in which work is taking place.
# Your working directory will be different than mine - be sure to change it to where your work is being done!

## Just like in the first script, the first part of the line of code includes a pathway to the executable file. In this case, it will be the path to the Admixture executable file.
# Once the package is downloaded and placed where you want it to be, use pwd in the package directory in order to find where the executable exists and use that in your code.
# Reminder, you will have to change the code, my pathway will not be the same as yours.

## The rest of the script is very simple to follow. The first piece following the pathway is the .bed file produced by the first script. 
## The last part of this code is the number 3. This indicates to the admixture program that your analysis will be split between three different populations.
# Using 3 populations comes from the sample data itself. (preset for this example)

cd /Users/Britt/Desktop/Scripting_Final_Project/Scripting-Project

/Users/Britt/Desktop/Scripting_Final_Project/Scripting-Project/admixture_macosx-1.3.0/admixture example.bed 3
