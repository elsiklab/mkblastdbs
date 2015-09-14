#!/bin/bash
rm -rf consortium_bees

cp -R consortium consortium_bees


for i in consortium_bees/*scaffolds*; do
    makeblastdb -in $i -dbtype nucl -title Consortium_assembly_`basename $i .fa` -parse_seqids ;
done;


for i in consortium_bees/*cds*; do
    makeblastdb -in $i -dbtype nucl -title Consortium_`basename $i .fa` -parse_seqids ;
done;



for i in consortium_bees/*pep*; do
    makeblastdb -in $i -dbtype prot -title Consortium_`basename $i .fa` -parse_seqids ;
done;

