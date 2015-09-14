#!/bin/bash
set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Linepithema_humile/CHR_Un/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Linepithema_humile/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Linepithema_humile/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Linepithema_humile/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Linepithema_humile/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Linepithema_humile/README_CURRENT_RELEASE"
