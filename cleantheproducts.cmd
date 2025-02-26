@echo off

setlocal

cd /d "%~dp0"

latexmk -C
del /f /q *.bbl
del /f /q *.log

cd cxapitroj
@REM clean subfiles
latexmk -C
del /f /q *.bbl
del /f /q *.log
cd ..

endlocal

timeout 5
