#
# Makefile for LaTeX template of USTC thesis
#
# Reference:
#	1. http://tex.stackexchange.com/questions/40738/
#	2. Manual of latexmk
#

.PHONY: main.pdf cover.pdf all clean

all: main.pdf cover.pdf

main.pdf: main.tex
	latexmk -xelatex -shell-escape -use-make $^

cover.pdf: cover.tex
	latexmk -xelatex -shell-escape -use-make $^

clean:
	latexmk -c
	-rm *.bbl *.loa
