#!/bin/bash
rm -rf consortium_bumble

cp -R bumble consortium_bumble



for i in consortium_bumble/*scaffolds*; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (Bombus Consortium)" -parse_seqids ;
done;

for i in consortium_bumble/*Scaffold*; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (Bombus Consortium)" -parse_seqids ;
done;



for i in consortium_bumble/*cds*; do
    makeblastdb -in $i -dbtype nucl -title "`basename $i .fa` (Bombus Consortium)" -parse_seqids ;
done;



for i in consortium_bumble/*pep*; do
    makeblastdb -in $i -dbtype prot -title "`basename $i .fa` (Bombus Consortium)" -parse_seqids ;
done;

