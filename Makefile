default: default

FILE_NAME=main
INCLUDE_DIR=contents
OUTPUT_DIR=build
DEFAULT_ARGS=-synctex=1 -xelatex -interaction=nonstopmode -pdf -outdir=${OUTPUT_DIR} ${FILE_NAME}.tex

add-lib:
	cp --parents lib/* ~/texmf/tex/latex/biblatex-apa/

clean:
	rm -rf ./build && mkdir ./build

build-latex:
	latexmk ${DEFAULT_ARGS}

link-pdf:
	if [ ! -L ./${FILE_NAME}.pdf ]; then ln -s ./${OUTPUT_DIR}/${FILE_NAME}.pdf ./${FILE_NAME}.pdf; fi

all: clean build-latex link-pdf

default: all

watch: 
	latexmk -pvc ${DEFAULT_ARGS}