#!/bin/bash

mkdir ncbi_protein
find ncbi|grep protein.fa.gz|sed -e 's/\(.*\)\/\(.*\)\/\(.*\)/cp \1\/\2\/\3 ncbi_protein\/\1_\2_\3/'|bash
find ncbi|grep rna.fa.gz|sed -e 's/\(.*\)\/\(.*\)\/\(.*\)/cp \1\/\2\/\3 ncbi_protein\/\1_\2_\3/'|bash

gunzip ncbi_protein/*.gz


for i in ncbi_protein/*rna.fa; do
    makeblastdb -in $i -dbtype nucl -title `basename $i .fa` -parse_seqids ;
done;


for i in ncbi_protein/*protein.fa; do
    makeblastdb -in $i -dbtype prot -title NCBI_`basename $i .fa` -parse_seqids ;
done;
