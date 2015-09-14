#!/bin/bash
set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Wasmannia_auropunctata/CHR_Un/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Wasmannia_auropunctata/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Wasmannia_auropunctata/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Wasmannia_auropunctata/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Wasmannia_auropunctata/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Wasmannia_auropunctata/README_CURRENT_RELEASE"
