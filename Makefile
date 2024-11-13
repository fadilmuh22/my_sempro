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

copy-pdf:
	cp ./${OUTPUT_DIR}/${FILE_NAME}.pdf ./${FILE_NAME}.pdf

all: clean build-latex copy-pdf

default: all

watch: 
	latexmk -pvc ${DEFAULT_ARGS}