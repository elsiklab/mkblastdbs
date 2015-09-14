#!/bin/bash
set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/CHR_Un/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/CHR_MT/*.fa.gz"
mkdir tmp
mv *.fa.gz tmp
cat tmp/*.fa.gz > 13686_ref_Si_gnG.fa.gz
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Solenopsis_invicta/README_CURRENT_RELEASE"
