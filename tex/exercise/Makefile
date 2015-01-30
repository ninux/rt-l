DOCUMENT = exercise
OBJ_DIR = ./obj

LATEX_ITERATIONS = 3
LATEX_AUXILIARY = *.aux
LATEX_LOGFILE = *.log
LATEX_OUTPUTFILE = *.out
LATEX_TABLEOFCONTENTS = *.toc
LATEX_PDF = $(DOCUMENT).pdf


.PHONY:	doc clean

all: doc clean

doc:
	for i in {1..$(LATEX_ITERATIONS)}; \
		do pdflatex $(DOCUMENT).tex; \
	done;

clean:
	rm \
		$(LATEX_AUXILIARY) \
		$(LATEX_LOGFILE) \
		$(LATEX_TABLEOFCONTENTS) \
		$(LATEX_OUTPUTFILE)
	mv	$(LATEX_PDF) $(OBJ_DIR)/. \
