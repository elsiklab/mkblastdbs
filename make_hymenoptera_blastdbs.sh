#!/bin/bash

set -euf -o pipefail


./hymenoptera/make_ensembl.sh
cp -R ensembl_blast/. blastdbs/
./hymenoptera/make_gnomon.sh
cp -R ncbi_gnomon/. blastdbs/
./hymenoptera/make_ncbi_genome_blastdb.sh
cp -R ncbi_blast/. blastdbs/
./hymenoptera/make_ncbi_protein.sh
cp -R ncbi_protein/. blastdbs/
./hymenoptera/make_consortium_genome_blastdb.sh
cp -R consortium_bees/. blastdbs/
./hymenoptera/make_ogs.sh
cp -R consortium_blast/. blastdbs/
./hymenoptera/make_bumble.sh
cp -R consortium_bumble/. blastdbs/
