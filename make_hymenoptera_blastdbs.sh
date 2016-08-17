#!/bin/bash

set -euf -o pipefail


./hymenoptera/make_ensembl.sh
./hymenoptera/make_gnomon.sh
./hymenoptera/make_ncbi_genome_blastdb.sh
./hymenoptera/make_ncbi_protein.sh
./hymenoptera/make_consortium_genome_blastdb.sh
./hymenoptera/make_ogs.sh
./hymenoptera/make_bumble.sh
