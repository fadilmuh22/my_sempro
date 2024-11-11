default: move_pdf

FILE_NAME=main
INCLUDE_DIR=contents
OUTPUT_DIR=build

add-lib:
	cp --parents lib/* ~/texmf/tex/latex/biblatex-apa/
clean:
	rm -rf ./build && mkdir ./build
build-latex: 
	latexmk -synctex=1 -xelatex -interaction=nonstopmode -pdf -outdir=${OUTPUT_DIR} ${FILE_NAME}.tex
move_pdf: build-latex
	cp ./${OUTPUT_DIR}/${FILE_NAME}.pdf ./${FILE_NAME}.pdf