#!/bin/bash
set -v
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Harpegnathos_saltator/CHR_Un/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Harpegnathos_saltator/protein/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Harpegnathos_saltator/protein/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Harpegnathos_saltator/RNA/*.fsa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Harpegnathos_saltator/RNA/*.fa.gz"
wget --quiet "ftp://ftp.ncbi.nlm.nih.gov/genomes/Harpegnathos_saltator/README_CURRENT_RELEASE"
