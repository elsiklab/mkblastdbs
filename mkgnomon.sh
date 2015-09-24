#!/bin/bash
rm -rf ncbi_gnomon
mkdir ncbi_gnomon
find ncbi|grep ref|grep -v tmp|grep -v _chr\/|sort> refseq_name.txt
sed -e 's/\(.*\)\/.*_ref_//' refseq_name.txt > refseq_name_trim.txt
find ncbi | grep Gnomon | grep prot | sort > protein.txt
sed -e 's/\(.*\)\.fa\.gz/\1_Gnomon_protein\.fa\.gz/' outold2.txt > protein2.txt
paste protein.txt protein2.txt > protein3.txt

while read -r a b; do
    echo Processing $a $b
    cp $a ncbi_gnomon/$b;
done<protein3.txt



###
# Find all NCBI RNA
find ncbi | grep Gnomon | grep mRNA | sort > rna.txt
sed -e 's/\(.*\)\.fa\.gz/\1_Gnomon_rna\.fa\.gz/' refseq_name_trim.txt > rna2.txt
paste rna.txt rna2.txt > rna3.txt

while read -r a b; do
    echo Processing $a $b
    cp $a ncbi_gnomon/$b;
done<rna3.txt


gunzip ncbi_gnomon/*.gz

for i in ncbi_gnomon/*rna*.fa; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (NCBI)" -parse_seqids ;
done;

for i in ncbi_gnomon/*prot*.fa; do
    makeblastdb -in $i -dbtype prot -title "`basename $i .fa` (NCBI)" -parse_seqids ;
done;


rm protein.txt
rm protein2.txt
rm protein3.txt

rm rna.txt
rm rna2.txt
rm rna3.txt

rm refseq_name.txt
rm refseq_name_trim.txt


