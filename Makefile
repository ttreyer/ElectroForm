FILENAME=ElectroForm
INPUT=$(FILENAME).latex
OUTPUT=$(FILENAME).pdf

pdf:
	pdflatex $(INPUT)
