#!/bin/bash
set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Cerapachys_biroi/CHR_Un/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Cerapachys_biroi/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Cerapachys_biroi/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Cerapachys_biroi/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Cerapachys_biroi/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Cerapachys_biroi/README_CURRENT_RELEASE"
