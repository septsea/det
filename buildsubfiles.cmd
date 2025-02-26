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

cd cxapitroj

%konstruu% "agnosko"
%konstruu% "antauxa fina papero"
%konstruu% "antauxparolo"
%konstruu% "bibliografio"
%konstruu% "dedicxo"
%konstruu% "dependeco"
%konstruu% "determinanto - antauxkondicxoj"
%konstruu% "determinanto - BC"
%konstruu% "determinanto - determinantoj"
%konstruu% "determinanto - diversajxoj"
%konstruu% "determinanto - ecoj de determinantoj"
%konstruu% "determinanto - la lasta leciono"
%konstruu% "determinanto - matrica multipliko"
%konstruu% "determinanto - SdLE 1"
%konstruu% "determinanto - SdLE 2"
%konstruu% "determinanto - SdLE 3"
%konstruu% "duvariablaj polinomoj de grado du"
%konstruu% "enhavtabelo"
%konstruu% "kolofono"
%konstruu% "kovrilo"
%konstruu% "la lasta pagxo"
%konstruu% "listo de simboloj"
%konstruu% "listo de vortoj"
%konstruu% "matematika indukto"
%konstruu% "postrakonto - diversajxoj"
%konstruu% "postrakonto - ecoj de determinantoj"
%konstruu% "postrakonto - ecoj kaj permutajxoj kaj BC"
@REM %konstruu% "postrakonto - ferma rimarko"
%konstruu% "postrakonto - klasikaj adjunktaj matricoj"
@REM %konstruu% "postrakonto - miaj opinioj"
%konstruu% "postrakonto - nenulaj determinantoj"
%konstruu% "postrakonto - pfaffoj"

cd ..

endlocal

timeout 5
