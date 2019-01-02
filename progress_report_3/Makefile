TEX = pdflatex
BIB = bibtex

all : tex bib

tex : proposal.tex	
	$(TEX) $<

bib: proposal.aux
	$(BIB) $(basename $<)