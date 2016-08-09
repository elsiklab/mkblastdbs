#!/bin/bash

genomes="Bombus_impatiens Wasmannia_auropunctata Solenopsis_invicta Pogonomyrmex_barbatus Nasonia_vitripennis Megachile_rotundata Linepithema_humile Harpegnathos_saltator Camponotus_floridanus Cerapachys_biroi Bombus_terrestris Bombus_impatiens Apis_mellifera Apis_florea Acromyrmex_echinatior Apis_dorsata Atta_cephalotes"

for i in $genomes; do
    echo $i;
    wget --quiet -A "*.fa.gz" -X genomes/$i/ARCHIVE -r ftp://ftp.ncbi.nlm.nih.gov/genomes/$i/ 
    wget --quiet -A "*.fsa.gz" -X genomes/$i/ARCHIVE -r ftp://ftp.ncbi.nlm.nih.gov/genomes/$i/ 
done;

find ftp.ncbi.nlm.nih.gov/ -type d -empty -delete
