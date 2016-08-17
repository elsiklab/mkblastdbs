clean:
	rm -rf ensembl
	rm -rf ncbi
	rm -rf ensembl_blast
ncbi:
	./hymenoptera/ncbi.sh
ensembl:
	./hymenoptera/ensembl.sh
ogs:
	./hymenoptera/ogs.sh
	./hymenoptera/consortium.sh
	./hymenoptera/bumblebee.sh
all: ncbi ensembl ogs
