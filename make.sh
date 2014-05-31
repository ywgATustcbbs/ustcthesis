#!/bin/sh
# this is for Unix/Linux scripts
sh clean.sh
xelatex main
bibtex main
xelatex main
xelatex main
xelatex cover
