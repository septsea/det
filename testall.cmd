@echo off

setlocal

cd /d "%~dp0"

call testfonts lua
call testfonts xe
call buildthebook lua
call cleantheproducts
call testsubfiles lua
call cleantheproducts
call testsubfiles xe
call buildthebook

endlocal
