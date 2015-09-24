#!/bin/bash
rm -rf consortium_bees

cp -R consortium consortium_bees


for i in consortium_bees/*scaffolds*; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (Ten Bee Consortium)" -parse_seqids ;
done;

for i in consortium_bees/*Scaffold*; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (Ten Bee Consortium)" -parse_seqids ;
done;



for i in consortium_bees/*cds*; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (Ten Bee Consortium)" -parse_seqids ;
done;



for i in consortium_bees/*pep*; do
    makeblastdb -in $i -dbtype prot -title "`basename $i .fa` (Ten Bee Consortium)" -parse_seqids ;
done;

