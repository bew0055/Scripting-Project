#!/bin/bash

module load plink/1.9

plink --bfile 1000genome_combined_pruned_correct_chromosomes --geno 0.999 --make-bed --out 1000genome_admixture_ready
