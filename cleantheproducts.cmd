@latexmk -C
@REM @del /f /q *.bbl
@REM @del /f /q *.log
@REM @del /f /q *.upa
@REM @del /f /q *.upb
@REM @del /f /q cxapitroj\*.aux
@git clean -xdf
@timeout 5
