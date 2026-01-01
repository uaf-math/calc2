PDFS = schedule.pdf

all: $(PDFS)

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.synctex.gz
