#!/bin/bash

mkdir ncbi_gnomon

find ncbi|grep Gnomon|sed -e 's/\(.*\)\/\(.*\)\/\(.*\)/cp \1\/\2\/\3 ncbi_gnomon\/\1_\2_\3/'|bash

gunzip ncbi_gnomon/*.gz

for i in ncbi_gnomon/*prot.fsa; do
    makeblastdb -in $i -dbtype prot -title \"`basename $i .fsa`_NCBI\" -parse_seqids ;
done;


for i in ncbi_gnomon/*mRNA.fsa; do
    makeblastdb -in $i -dbtype nucl -title \"`basename $i .fsa`_NCBI\" -parse_seqids ;
done;
