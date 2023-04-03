#!/bin/bash

module load plink/1.9

plink --bfile 1000genome_combined_with_variant_ID \
    --maf 0.10 --indep-pairwise 500 10 0.2 \
    --allow-extra-chr --memory 650000 \
    --out pruned 

plink --bfile 1000genome_combined_with_variant_ID \
    --extract pruned.prune.in --make-bed \
    --allow-extra-chr --memory 650000 \
    --out 1000genome_combined_pruned 
