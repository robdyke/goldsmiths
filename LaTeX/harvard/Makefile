# harvard family of bibliographic styles
# Copyright 1994 - Peter Williams peterw@archsci.arch.su.edu.au

prefix=/usr/share
texlib=$(prefix)/texmf
bstdir=$(texlib)/bibtex/bst/harvard
stydir=$(texlib)/tex/latex/local
docdir=$(texlib)/bibtex/doc/harvard

BSTS=agsm.bst dcu.bst jmr.bst jphysicsB.bst kluwer.bst nederlands.bst apsr.bst

all:

harvard.ps: harvard.dvi
	dvips harvard

harvard.dvi: harvard.tex harvard.bbl
	latex harvard
	latex harvard

harvard.bbl: harvard.aux harvard.bib
	bibtex harvard

harvard.aux: harvard.tex
	latex harvard

install: harvard.sty harvard.perl $(BSTS)
	mkdir -p $(bstdir)
	mkdir -p $(stydir)
#	mkdir -p $(htmldir)
	cp $(BSTS) $(bstdir)
	cp harvard.sty $(stydir)

install_doc: harvard.tex harvard.bib
	mkdir -p $(docdir)
	cp doc_Makefile $(docdir)/Makefile
	cp harvard.tex $(docdir)
	cp harvard.bib $(docdir)

clean:
	rm -f harvard.dvi harvard.aux harvard.bbl harvard.log harvard.blg
