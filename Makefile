default: move_pdf

FILE_NAME=main
OUTPUT_DIR=build

build-latex:
	pdflatex -aux-directory=${OUTPUT_DIR} -output-directory=${OUTPUT_DIR} ${FILE_NAME}.tex
move_pdf: build-latex
	cp ./${OUTPUT_DIR}/${FILE_NAME}.pdf ./${FILE_NAME}.pdf