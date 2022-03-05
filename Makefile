# Makefile

# ----------------------------------------* CONFIGURATION
SHELL=/bin/bash
FILENAME=poem


# ----------------------------------------* DEFAULT
all: render clean


# ----------------------------------------* RENDERING
render:
	pdflatex ${FILENAME}.tex
	bibtex ${FILENAME}||true
	pdflatex ${FILENAME}.tex
	pdflatex ${FILENAME}.tex


# ----------------------------------------* CLEANING
clean: clean-meta clean-bib

clean-bib:
	rm -f ${FILENAME}.{bbl,blg}

clean-meta:
	rm -f ${FILENAME}.{log,out,aux}
