rem batch script for LaTeX template of USTC thesis

latexmk -xelatex main.tex
latexmk -xelatex cover.tex
call clean
main.pdf
cover.pdf
