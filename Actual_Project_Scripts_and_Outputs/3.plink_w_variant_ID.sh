#!/bin/bash

module load plink/2.0

plink2 --bfile 1000genome_combined --make-bed --new-id-max-allele-len 673 --out 1000genome_combined_with_variant_ID --set-all-var-ids @:# --allow-extra-chr
