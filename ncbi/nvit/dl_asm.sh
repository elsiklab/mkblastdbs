#!/bin/bash
set -e
for i in $(seq -f "%02g" 1 5) Un; do
    echo downloading CHR_$i
    wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Nasonia_vitripennis/CHR_$i/*.fa.gz";
done;
mkdir tmp
mv *.fa.gz tmp
cat tmp/*.fa.gz > nvi_ref_Nvit_2.1.fa.gz


set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Nasonia_vitripennis/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Nasonia_vitripennis/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Nasonia_vitripennis/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Nasonia_vitripennis/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Nasonia_vitripennis/README_CURRENT_RELEASE"
