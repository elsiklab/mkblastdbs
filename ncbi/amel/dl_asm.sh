#!/bin/bash
for i in LG{1..16} MT Un;
    do echo downloading CHR_$i;
    wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/CHR_$i/*.fa.gz";
done;
set -v
mkdir tmp
mv *fa.gz tmp
cat tmp/*fa.gz > ame_ref_Amel_4.5.fa.gz

wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/README_CURRENT_RELEASE"
