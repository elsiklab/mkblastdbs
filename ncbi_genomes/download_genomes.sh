#!/bin/bash

genomes="Bombus_impatiens Wasmannia_auropunctata Solenopsis_invicta Pogonomyrmex_barbatus Nasonia_vitripennis Megachile_rotundata Linepithema_humile Harpegnathos_saltator Camponotus_floridanus Cerapachys_biroi Bombus_terrestris Bombus_impatiens Apis_mellifera Apis_florea Acromyrmex_echinatior Apis_dorsata Atta_cephalotes"

for i in $genomes; do
    echo $i
    ret=`curl -s -l ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/$i/latest_assembly_versions/`
    wget --quiet -A "*genomic.fna.gz,*cds_from_genomic.fna.gz,*protein.faa.gz,*rna.fna.gz,*rna_from_genomic.fna.gz" ftp://ftp.ncbi.nlm.nih.gov/genomes/all/$ret/*
done;


