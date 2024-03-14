@REM Clean the products
@latexmk -C
@REM @del /f /q *.bbl
@REM @del /f /q *.log
@REM @del /f /q *.upa
@REM @del /f /q *.upb
@REM @del /f /q cxapitroj\*.aux
@git clean -xdf
@REM Build the book with lualatex
@latexmk -lualatex -file-line-error -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro
@REM 1 minute to check the PDF file
@timeout 60
@REM Clean the products again
@latexmk -C
@REM @del /f /q *.bbl
@REM @del /f /q *.log
@REM @del /f /q *.upa
@REM @del /f /q *.upb
@REM @del /f /q cxapitroj\*.aux
@git clean -xdf
@REM Build the book with xelatex,
@REM with which the PDF file is smaller
@latexmk -xelatex -file-line-error -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro
@REM Exit the program
@timeout 5
