#!/bin/bash

parallel -j2 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype nucl -title '{.}_scaffolds (NCBI)' -parse_seqids" ::: ncbi_genomes/*genome*.fna.gz
parallel -j2 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype nucl -title '{.}_rna (NCBI)' -parse_seqids" ::: ncbi_genomes/*rna*.fna.gz
parallel -j2 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype nucl -title '{.}_cds (NCBI)' -parse_seqids" ::: ncbi_genomes/*cds*.fna.gz
parallel -j2 "gunzip -c {} | makeblastdb -in - -out ncbi_blast/{} -dbtype prot -title '{.}_protein (NCBI)' -parse_seqids" ::: ncbi_genomes/*protein*.faa.gz

