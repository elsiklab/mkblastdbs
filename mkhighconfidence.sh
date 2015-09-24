#!/bin/bash
rm -rf ncbi_protein
mkdir ncbi_protein
find ncbi|grep ref|grep -v tmp|grep -v _chr\/|sort> refseq_name.txt
sed -e 's/\(.*\)\/.*_ref_//' refseq_name.txt > refseq_name_trim.txt
find ncbi|grep protein.fa.gz>protein.txt

sed -e 's/\(.*\)\.fa\.gz/\1_protein\.fa\.gz/' refseq_name_trim.txt > protein2.txt
paste protein.txt protein2.txt > protein3.txt

while read -r a b; do
    echo Processing $a $b
    cp $a ncbi_protein/$b;
done<protein3.txt



###
# Find all NCBI RNA
find ncbi|grep rna.fa.gz>rna.txt
sed -e 's/\(.*\)\.fa\.gz/\1_rna\.fa\.gz/' refseq_name_trim.txt > rna2.txt
paste rna.txt rna2.txt > rna3.txt

while read -r a b; do
    echo Processing $a $b
    cp $a ncbi_protein/$b;
done<rna3.txt


gunzip ncbi_protein/*.gz

for i in ncbi_protein/*rna*.fa; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (NCBI)" -parse_seqids ;
done;

for i in ncbi_protein/*prot*.fa; do
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


