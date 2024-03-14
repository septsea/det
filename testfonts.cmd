@latexmk -xelatex -interaction=nonstopmode -halt-on-error -silent -g tiparoj
@REM @latexmk -lualatex -interaction=nonstopmode -halt-on-error -silent -g tiparoj
@latexmk -c tiparoj
@timeout 5
