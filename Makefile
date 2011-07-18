.PHONY: all clean

all: cv-fernandojpereda.pdf

cv-fernandojpereda.pdf: cv-fernandojpereda.tex fjpCV.png
	latexmk -pdf $<

clean:
	$(RM) cv-fernandojpereda.pdf *.aux *.dvi *.log *.out *.fdb_latexmk

push:
	git push
	cp cv-fernandojpereda.pdf ~/Dropbox/Public/
