@echo off
@echo ================================
@echo.
@echo Deslogando todos usuarios...
@echo.
@echo ================================
for /f "tokens=2" %%a in ('query user ^| find /I "Disco"') do logoff %%a 
pause
@cls
@echo ================================
@echo.
@echo Todos deslogados
@echo.
@echo ================================
pause
