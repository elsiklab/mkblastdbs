#!/bin/bash
rm -rf ncbi_blast
mkdir ncbi_blast

find ncbi|grep ref|grep -v tmp|grep -v _chr\/|sort> out.txt

while read p;
    do cp $p ncbi_blast;
done<out.txt

gunzip ncbi_blast/*.gz


for i in ncbi_blast/*.fa; do
    makeblastdb -in $i -dbtype nucl -title NCBI__assembly_`basename $i .fa` -parse_seqids ;
done;



