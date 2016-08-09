#!/bin/bash
rm -rf ncbi_gnomon
mkdir ncbi_gnomon
rm releases.txt
find ncbi|grep ref|grep -v tmp|grep -v _chr\/|sort> refseq_name.txt
sed -e 's/\(.*\)\/.*_ref_//' refseq_name.txt > refseq_name_trim.txt
find ncbi | grep Gnomon | grep prot | sort > protein.txt
sed -e 's/\(.*\)\.fa\.gz/\1_Gnomon_protein\.fa\.gz/' outold2.txt > protein2.txt
for i in `find ncbi | grep CURRENT|sort`; do grep "ANNOTATION RELEASE NAME" $i| sed -e 's/.*Annotation Release //' >> releases.txt; done;
paste protein.txt protein2.txt releases.txt > protein3.txt


while read -r a b c; do
    echo Processing $a $b $c
    cp $a "ncbi_gnomon/`basename $b protein.fa.gz`AnnotRelease${c}_protein.fa.gz";
done<protein3.txt



###
# Find all NCBI RNA
find ncbi | grep Gnomon | grep mRNA | sort > rna.txt
sed -e 's/\(.*\)\.fa\.gz/\1_Gnomon_rna\.fa\.gz/' refseq_name_trim.txt > rna2.txt
paste rna.txt rna2.txt releases.txt > rna3.txt

while read -r a b c; do
    echo Processing $a $b $c
    cp $a "ncbi_gnomon/`basename $b rna.fa.gz`AnnotRelease${c}_rna.fa.gz";
done<rna3.txt

parallel -j 2 'gunzip -c {} | makeblastdb -in - -out ensembl_blast/{} -dbtype nucl -title "{.}.fa (NCBI)" -parse_seqids' ::: ncbi_gnomon/*rna*.fa.gz
parallel -j 2 'gunzip -c {} | makeblastdb -in - -out ensembl_blast/{} -dbtype prot -title "{.}.fa (NCBI)" -parse_seqids' ::: ncbi_gnomon/*prot*.fa.gz


rm protein.txt
rm protein2.txt
rm protein3.txt

rm rna.txt
rm rna2.txt
rm rna3.txt

rm refseq_name.txt
rm refseq_name_trim.txt
rm releases.txt

