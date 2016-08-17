#!/bin/bash

set -veu -o pipefail

SPECIES="Bombus_impatiens Wasmannia_auropunctata Solenopsis_invicta Pogonomyrmex_barbatus Nasonia_vitripennis Megachile_rotundata Linepithema_humile Harpegnathos_saltator Camponotus_floridanus Cerapachys_biroi Bombus_terrestris Bombus_impatiens Apis_mellifera Apis_florea Acromyrmex_echinatior Apis_dorsata Atta_cephalotes"

for i in $SPECIES; do
    # first download symlink
    ret=`curl -s -l ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/$i/latest_assembly_versions/`
    # then wget it, because wget doesn't follow symlinks well
    wget -P ncbi_gnomes --quiet -A "*genomic.fna.gz,*cds_from_genomic.fna.gz,*protein.faa.gz,*rna.fna.gz,*rna_from_genomic.fna.gz" ftp://ftp.ncbi.nlm.nih.gov/genomes/all/$ret/*
done;


parallel -j1 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype nucl -title '{.}_scaffolds (NCBI)' -parse_seqids" ::: ncbi_genomes/*genome*.fna.gz
parallel -j1 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype nucl -title '{.}_rna (NCBI)' -parse_seqids" ::: ncbi_genomes/*rna*.fna.gz
parallel -j1 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype nucl -title '{.}_cds (NCBI)' -parse_seqids" ::: ncbi_genomes/*cds*.fna.gz
parallel -j1 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype prot -title '{.}_protein (NCBI)' -parse_seqids" ::: ncbi_genomes/*protein*.faa.gz

