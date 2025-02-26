@echo off

setlocal

cd /d "%~dp0"

@REM add all files that are not ignored
git add -A

@REM remove untracked files as well as ignored files
git clean -xdf

@REM undo the previous "add"
git reset

endlocal

timeout 5
