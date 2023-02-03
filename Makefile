MAIN       =main
LATEXMK    =latexmk
XELATEX    =-xelatex
LUALATEX   =-lualatex
LATEXMKOPT =-file-line-error
SYNCTEX    =-synctex=1
BUILDOPT   =-interaction=nonstopmode -halt-on-error -silent
# LATEXMKOPT =-xelatex -shell-escape -file-line-error -norc
# BUILDOPT   =-synctex=1 -interaction=nonstopmode -silent
# DEBUGOPT   =-dependents -logfilewarninglist -recorder -rules -time -verbose -interaction=errorstopmode

# .PHONY: $(MAIN).pdf all clean cleanup debug force
.PHONY: $(MAIN).pdf all xe lua clean testfonts

all: $(MAIN).pdf

$(MAIN).pdf:
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

xe:
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

lua:
		$(LATEXMK) $(LUALATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

clean:
		$(LATEXMK) -C

# debug:
# 		$(LATEXMK) $(XELATEX) $(DEBUGOPT) $(MAIN)

# clean:
# 		$(LATEXMK) -c $(MAIN)

# cleanup:
# 		$(LATEXMK) -C $(MAIN)

# force:
# 		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) -g $(MAIN)

testfonts:
		$(LATEXMK) $(XELATEX) $(BUILDOPT) -g testfonts
