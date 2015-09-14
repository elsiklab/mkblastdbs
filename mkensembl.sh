#!/bin/bash


mkdir ensembl_blast/
cp -R ensembl/*.fa.gz ensembl_blast
gunzip ensembl_blast/*.gz



for i in ensembl_blast/*cds*.fa; do
    makeblastdb -in $i -dbtype nucl -title Ensembl_`basename $i .fa` -parse_seqids ;
done;

for i in ensembl_blast/*pep*.fa; do
    makeblastdb -in $i -dbtype prot -title Ensembl_`basename $i .fa` -parse_seqids ;
done;


