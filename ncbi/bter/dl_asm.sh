#!/bin/bash
set -e
for i in $(seq -f "LG_B%02g" 1 18) Un; do
    echo downloading chr$i
    wget --quiet ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/CHR_$i/bte_ref_Bter_1.0_chr$i.fa.gz;
done;
mkdir tmp
mv *.fa.gz tmp
cat tmp/*.fa.gz > bte_ref_Bter_1.0.fa.gz


set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/README_CURRENT_RELEASE"
