.PHONY: all clean

all: cv-fernandojpereda.pdf carta-presentacion.pdf

cv-fernandojpereda.pdf: cv-fernandojpereda.tex fjpCV.png
	latexmk -pdf $<

carta-presentacion.pdf: carta-presentacion.tex
	latexmk -pdf $<

clean:
	$(RM) cv-fernandojpereda.pdf carta-presentacion.pdf *.aux *.dvi *.log *.out *.fdb_latexmk

push:
	git push
	cp cv-fernandojpereda.pdf ~/Dropbox/Public/
