#!/bin/bash
rm -rf ncbi_blast
mkdir ncbi_blast

find ncbi|grep ref|grep -v tmp|grep -v _chr\/|sort> out.txt
sed -e 's/\(.*\)\/.*_ref_//' out.txt > out2.txt
paste out.txt out2.txt > out3.txt

while read -r a b; do
    echo Processing $a $b
    cp $a ncbi_blast/$b;
done<out3.txt
rm out.txt
rm out2.txt
rm out3.txt

gunzip ncbi_blast/*.gz


for i in ncbi_blast/*.fa; do
    echo Creating BLAST for $i
    echo makeblastdb -in $i -dbtype nucl -title "`basename $i .fa`_scaffolds (NCBI)" -parse_seqids ;
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa`_scaffolds (NCBI)" -parse_seqids ;
done;



