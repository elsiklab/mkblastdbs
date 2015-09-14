#!/bin/bash
set -v
wget --quiet ftp://ftp.ncbi.nlm.nih.gov/genomes/Bombus_terrestris/Assembled_chromosomes/seq/*.fa.gz
mkdir tmp
mv *.fa.gz tmp
cat tmp/*.fa.gz> bte_ref_Bter_1.0.fa.gz
