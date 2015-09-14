#!/bin/bash

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/Apis_mellifera/Assembled_chromosomes/seq/*.fa.gz
mkdir tmp
mv *.fa.gz tmp
cat tmp/*.fa.gz> amel_ref_Amel_4.5.fa.gz
