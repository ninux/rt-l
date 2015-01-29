DOCUMENT = exercise
OBJ_DIR = ./obj

LATEX_ITERATIONS = 3
LATEX_AUXILIARY = *.aux
LATEX_LOGFILE = *.log
LATEX_OUTPUTFILE = *.out
LATEX_PDF = $(DOCUMENT).tex


.PHONY:	doc clean

doc:
	for i in {1..$(LATEX_ITERATIONS)}; \
		do pdflatex $(DOCUMENT).tex; \
	done;

clean:
	rm \
		$(LATEX_AUXILIARY) \
		$(LATEX_LOGFILE) \
		$(LATEX_OUTPUTFILE) \
	cp	$(LATEX_PDF) $(OBJ_DIR)/. \
	rm 	$(LATEX_PDF)

