# Variables
LATEX=pdflatex
FILE=CV

# Default target
all: $(FILE).pdf

# Compile the LaTeX file
$(FILE).pdf: $(FILE).tex macro.tex
	$(LATEX) $(FILE).tex
	$(LATEX) $(FILE).tex  # Run twice to ensure proper references

# Clean up auxiliary files
clean:
	rm -f $(FILE).aux $(FILE).log $(FILE).out $(FILE).toc

# Clean up all generated files including PDF
cleanall: clean
	rm -f $(FILE).pdf

.PHONY: all clean cleanall

