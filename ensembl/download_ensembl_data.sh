#!/bin/bash


set -veuf -o pipefail


wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/apis_mellifera/cds/Apis_mellifera.GCA_000002195.1.28.cds.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/apis_mellifera/pep/Apis_mellifera.GCA_000002195.1.28.pep.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/atta_cephalotes/cds/Atta_cephalotes.GCA_000143395.2.28.cds.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/atta_cephalotes/pep/Atta_cephalotes.GCA_000143395.2.28.pep.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/nasonia_vitripennis/cds/Nasonia_vitripennis.GCA_000002325.2.28.cds.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/nasonia_vitripennis/pep/Nasonia_vitripennis.GCA_000002325.2.28.pep.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/solenopsis_invicta/cds/Solenopsis_invicta.GCA_000188075.1.28.cds.all.fa.gz
wget --quiet ftp://ftp.ensemblgenomes.org/pub/release-28/metazoa/fasta/solenopsis_invicta/pep/Solenopsis_invicta.GCA_000188075.1.28.pep.all.fa.gz

