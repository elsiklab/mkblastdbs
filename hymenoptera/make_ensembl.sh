#!/bin/bash

rm -rf ensembl_blast
mkdir ensembl_blast/

parallel -j 2 'gunzip -c {} | makeblastdb -in - -out ensembl_blast/{} -dbtype nucl -title "{.}.fa (Ensembl)" -parse_seqids' ::: ensembl/*cds*.fa.gz
parallel -j 2 'gunzip -c {} | makeblastdb -in - -out ensembl_blast/{} -dbtype prot -title "{.}.fa (Ensembl)" -parse_seqids' ::: ensembl/*pep*.fa.gz



