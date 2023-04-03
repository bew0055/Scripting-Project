#!/bin/bash

module load plink/1.9

plink --make-bed --out 1000genome_combined --vcf Admixture_Merged_Samples_and_1000genomes.vcf.gz --allow-extra-chr
