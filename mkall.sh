#!/bin/bash

set -v

./mkensembl.sh
cp -R ensembl_blast/. blastdbs/
./mkgnomon.sh
cp -R ncbi_gnomon/. blastdbs/
./mkblast.sh
cp -R ncbi_blast/. blastdbs/
./mkhighconfidence.sh
cp -R ncbi_protein/. blastdbs/
