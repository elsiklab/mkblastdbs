#!/bin/bash
set -veu -o pipefail

SPECIES="apis_mellifera nasonia_vitripennis atta_cephalotes solenopsis_invicta bombus_impatiens"
parallel --verbose -j 1 "wget --quiet -P ensembl ftp://ftp.ensemblgenomes.org/pub/release-32/metazoa/fasta/{}/cds/*.fa.gz" ::: $SPECIES
parallel --verbose -j 1 "wget --quiet -P ensembl ftp://ftp.ensemblgenomes.org/pub/release-32/metazoa/fasta/{}/pep/*.fa.gz" ::: $SPECIES

parallel -j 1 'gunzip -c {} | makeblastdb -in - -out ensembl_blast/{} -dbtype nucl -title "{.}.fa (Ensembl)" -parse_seqids' ::: ensembl/*cds*
parallel -j 1 'gunzip -c {} | makeblastdb -in - -out ensembl_blast/{} -dbtype prot -title "{.}.fa (Ensembl)" -parse_seqids' ::: ensembl/*pep*
