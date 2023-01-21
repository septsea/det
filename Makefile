MAIN       =main
LATEXMK    =latexmk
LATEXMKOPT =-xelatex -shell-escape -file-line-error -norc
BUILDOPT   =-synctex=1 -interaction=nonstopmode -silent
DEBUGOPT   =-dependents -logfilewarninglist -recorder -rules -time -verbose -interaction=errorstopmode

.PHONY: $(MAIN).pdf all clean cleanup debug force

all: $(MAIN).pdf

$(MAIN).pdf:
		$(LATEXMK) $(LATEXMKOPT) $(BUILDOPT) $(MAIN)

debug:
		$(LATEXMK) $(LATEXMKOPT) $(DEBUGOPT) $(MAIN)

clean:
		$(LATEXMK) -c $(MAIN)

cleanup:
		$(LATEXMK) -C $(MAIN)

force:
		$(LATEXMK) $(LATEXMKOPT) $(BUILDOPT) -g $(MAIN)
