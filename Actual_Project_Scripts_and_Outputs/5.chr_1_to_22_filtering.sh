#!/bin/bash

module load plink/1.9

plink --bfile 1000genome_combined_pruned --chr 1-22 --make-bed --allow-extra-chr --out 1000genome_combined_pruned_correct_chromosomes
