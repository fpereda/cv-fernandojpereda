.PHONY: all clean

all: cv-fernandojpereda.pdf carta-presentacion-gmv.pdf carta-presentacion-tecnobit.pdf

cv-fernandojpereda.pdf: cv-fernandojpereda.tex fjpCV.png
	latexmk -pdf $<

carta-presentacion-gmv.pdf: carta-presentacion-gmv.tex
	latexmk -pdf $<

carta-presentacion-tecnobit.pdf: carta-presentacion-tecnobit.tex
	latexmk -pdf $<

clean:
	$(RM) cv-fernandojpereda.pdf carta-presentacion-gmv.pdf carta-presentacion-tecnobit.pdf *.aux *.dvi *.log *.out *.fdb_latexmk

push:
	git push
	cp cv-fernandojpereda.pdf ~/Dropbox/Public/
