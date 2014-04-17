
### Makefile for BibTeX file of "A Handbook of Statistical Analyses Using R"

MainSrc = $(shell ls  *.in)
Bib = $(MainSrc:.in=.bib)

.SUFFIXES:
.SUFFIXES: .in .bib

.in.bib:
	echo "library(utils); library("HSAUR2"); HSAUR2:::pkgversions(\"$<\")" | R --quiet --vanilla > tmp
	echo "library(utils); library("HSAUR2"); HSAUR2:::pkgyears(\"tmp\")" | R --quiet --vanilla > $@
	rm -rf tmp

all: Echo Bibs

Echo: ; @(echo Source files ; echo $(MainSrc) ; echo '')
Bibs: $(Bib)

clean:
	rm -f $(Bib)
	rm -f *~
