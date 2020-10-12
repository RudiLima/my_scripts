@echo off


set /a minuto=60
:cronometro
cls
If NOT "%minuto%"=="0" (

set /a minuto=%minuto% - 1
echo.
echo %minuto%
@timeout /t 1 > Nul
Goto cronometro
)
Echo The End
pause