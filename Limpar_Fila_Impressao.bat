@echo off
echo. =========================================================
echo.  	  EXECUTE COMO ADMINISTRADOR PARA FUNCIONAR !!!	   
echo. =========================================================
pause

echo Opcao 2
@echo off
echo.
echo Interrompendo o Spooler
net stop spooler
pause
echo Acessando a pasta de impressoras
cd %systemroot%\system32\spool\PRINTERS
pause
echo Deletando os arquivos SHD
del /f /s *.shd
pause
echo Deletando os arquivos SPL
del /f /s *.spl
pause
echo Iniciando o Spooler
net start spooler
pause
pause
goto:inicio
