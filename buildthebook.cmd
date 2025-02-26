@echo off

setlocal

cd /d "%~dp0"

@rem TeX engine
set motorodetex=-xelatex

if /i "%~1"=="-lualatex" (set motorodetex=-lualatex)
if /i "%~1"=="-xelatex" (set motorodetex=-xelatex)
if /i "%~1"=="/lualatex" (set motorodetex=-lualatex)
if /i "%~1"=="/xelatex" (set motorodetex=-xelatex)
if /i "%~1"=="lualatex" (set motorodetex=-lualatex)
if /i "%~1"=="xelatex" (set motorodetex=-xelatex)
if /i "%~1"=="-luatex" (set motorodetex=-lualatex)
if /i "%~1"=="-xetex" (set motorodetex=-xelatex)
if /i "%~1"=="/luatex" (set motorodetex=-lualatex)
if /i "%~1"=="/xetex" (set motorodetex=-xelatex)
if /i "%~1"=="luatex" (set motorodetex=-lualatex)
if /i "%~1"=="xetex" (set motorodetex=-xelatex)
if /i "%~1"=="-lua" (set motorodetex=-lualatex)
if /i "%~1"=="-xe" (set motorodetex=-xelatex)
if /i "%~1"=="/lua" (set motorodetex=-lualatex)
if /i "%~1"=="/xe" (set motorodetex=-xelatex)
if /i "%~1"=="lua" (set motorodetex=-lualatex)
if /i "%~1"=="xe" (set motorodetex=-xelatex)
if "%~1"=="" (set motorodetex=-xelatex)

@rem build (the imperative form)
set konstruu=latexmk %motorodetex% -file-line-error -cd -synctex=1 -interaction=nonstopmode -halt-on-error -silent

%konstruu% libro

endlocal

timeout 5
