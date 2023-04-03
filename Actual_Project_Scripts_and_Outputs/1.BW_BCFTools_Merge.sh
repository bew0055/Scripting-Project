#!/bin/bash

module load samtools

bcftools merge 1k_genome_autosomes.vcf.gz BC-CR-100-1.rename.g.vcf.gz BC-CR-114-1.rename.g.vcf.gz > Admixture_Merged_Samples_and_1000genomes.vcf.gz
