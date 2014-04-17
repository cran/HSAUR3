
### Makefile for slides of "A Course of Statistical Analyses Using R"

Rnw = $(shell ls  C*.Rnw)
tex = $(Rnw:.Rnw=.tex)
pdf  = $(Rnw:.Rnw=.pdf) 

.SUFFIXES:
.SUFFIXES: .Rnw .tex .pdf

.Rnw.tex:
	echo "library("utils"); Sweave(\"$<\"); Sweave(\"HSAUR_title.Rnw\");" | R --vanilla

.tex.pdf:
	texi2dvi --pdf $<

all: texs pdfs 4up

texs: $(tex)
pdfs: $(pdf)

4up:	$(tex) HSAUR3_slides_4up.tex
	texi2dvi --pdf HSAUR3_slides_4up.tex
	

clean:
	rm -f $(tex)
	rm -f $(shell ls Ch*-*.eps)
	rm -f *~
	rm -rf Rplots.ps
	rm -rf figures

texclean:
	rm -rf *.log
	rm -rf *.aux
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.toc
	rm -rf *.nav
	rm -rf *.snm
	rm -rf *.vrb
	rm -rf *.out

dist-clean:
	rm -f $(tex)
	rm -f $(pdf)
	rm -f $(shell ls Ch*-*.pdf)
	rm -f $(shell ls Ch*-*.eps)
	rm -f *~
	rm -rf Rplots.ps
	rm -rf $(pdf)
	rm -rf *.log
	rm -rf *.aux
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.toc
	rm -rf *.nav
	rm -rf *.out
	rm -rf *.snm
	rm -rf *.vrb
	rm -rf figures
	rm -rf Rplots.pdf
	rm -rf Rplots.ps
	