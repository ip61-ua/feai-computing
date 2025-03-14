TEX := pdflatex
TEX_OUT := out
TEX_ARGS := -output-directory=$(TEX_OUT)
TEX_FILES := $(shell find . -name '*.tex')
PDF_FILES := $(patsubst %.tex,%.pdf,$(TEX_FILES))

all: $(PDF_FILES)

%.pdf: %.tex
	mkdir -p $(TEX_OUT)
	${TEX} ${TEX_ARGS} $<

clean:
	rm -rf ${TEX_OUT} *.pdf *.log *.aux *.gz
