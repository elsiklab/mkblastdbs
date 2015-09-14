#!/bin/bash
rm -rf ncbi_gnomon
mkdir ncbi_gnomon
find ncbi | grep Gnomon | sed -e 's/\(.*\)\/\(.*\)\/\(.*\).fsa.gz$/cp \1\/\2\/\3.fsa.gz ncbi_gnomon\/NCBI_\2_\3.fsa.gz/'|bash



gunzip ncbi_gnomon/*.gz

for i in ncbi_gnomon/*prot.fsa; do
    makeblastdb -in $i -dbtype prot -title `basename $i .fsa` -parse_seqids ;
done;


for i in ncbi_gnomon/*mRNA.fsa; do
    makeblastdb -in $i -dbtype nucl -title `basename $i .fsa` -parse_seqids ;
done;
