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
./mkconsortium.sh
cp -R consortium_bees/. blastdbs/
./mkogs.sh
cp -R consortium_blast/. blastdbs/
