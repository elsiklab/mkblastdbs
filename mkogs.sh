#!/bin/bash



rm -rf consortium_blast

cp -R ogs_files consortium_blast


for i in consortium_blast/*scaffolds*; do
    makeblastdb -in $i -dbtype nucl -title Consortium__assembly_`basename $i .fa` -parse_seqids ;
done;


for i in consortium_blast/*pep*; do
    makeblastdb -in $i -dbtype prot -title Consortium_`basename $i .fa` -parse_seqids ;

done;



for i in consortium_blast/*cds*; do
    makeblastdb -in $i -dbtype nucl -title Consortium_`basename $i .fa` -parse_seqids ;

done;

for i in consortium_blast/*transcript*; do
    makeblastdb -in $i -dbtype nucl -title Consortium_`basename $i .fa` -parse_seqids ;

done;
