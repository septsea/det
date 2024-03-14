MAIN       =libro
FONTS      =tiparoj
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
.PHONY: main cxefa $(MAIN) $(MAIN).pdf all xe lua clean fonts $(FONTS) $(FONTS).pdf

all: $(MAIN).pdf

$(MAIN).pdf:
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

$(MAIN):
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

main:
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

cxefa:
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

xe:
		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

lua:
		$(LATEXMK) $(LUALATEX) $(SYNCTEX) $(BUILDOPT) $(MAIN)

clean:
		$(LATEXMK) -C
		git clean -xdf

# debug:
# 		$(LATEXMK) $(XELATEX) $(DEBUGOPT) $(MAIN)

# clean:
# 		$(LATEXMK) -c $(MAIN)

# cleanup:
# 		$(LATEXMK) -C $(MAIN)

# force:
# 		$(LATEXMK) $(XELATEX) $(SYNCTEX) $(BUILDOPT) -g $(MAIN)

$(FONTS).pdf:
		$(LATEXMK) $(XELATEX) $(BUILDOPT) -g $(FONTS)

$(FONTS):
		$(LATEXMK) $(XELATEX) $(BUILDOPT) -g $(FONTS)

fonts:
		$(LATEXMK) $(XELATEX) $(BUILDOPT) -g $(FONTS)
