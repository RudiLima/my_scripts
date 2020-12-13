@echo off
cls
:menu
cls
date /t

## Redimensiona o tamanho da janela Batch
FOR /L %%W IN (20,3,50) DO MODE CON:LINES=25 COLS=%%W  

echo INFORMACOES PC
echo Nome do Computador: %computername% 
echo Usuario Atual: %username%	
echo Dominio: %whoami%
echo Service Tag: %wmic bios get serialnumber%
echo.
date /t

echo.
echo.
                   
echo  =============== MENU TAREFAS===============
echo  ===========================================
echo * 1. Limpar arquivos temporários I	
echo * 2. Limpar arquivos temporários II
echo * 3. Checagem de Disco - chkdsk	
echo * 4. Desfragmentar C:				
echo * 5. Verificador de Arquivos Corrompidos
echo * 6. Alterar Data/Hora Sistema	
echo * 7. Abrir gerenciador de dispositivo
echo * 8. Abrir Painel de Controle
echo * 9. Verificar versão do Windows
echo * 0. Sair
echo  ===========================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6
if %opcao% GEQ 7 goto opcao7
if %opcao% GEQ 8 goto opcao8
if %opcao% GEQ 9 goto opcao9
if %opcao% GEQ 0 goto opcao0


:opcao1
cls
del /q /f /s C:\Users\%username%\AppData\Local\Temp
echo ==================================
echo *  Limpeza dos arquivos TEMP I   *
echo ==================================
pause
goto menu

:opcao2
cls
DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.*
DEL /F /S /Q C:\WINDOWS\Temp\*.*
DEL /F /S /Q C:\WINDOWS\Prefetch\*.*
DEL “%WINDIR%\Tempor~1\*.*” /F /S /Q
RD /S /Q “%HOMEPATH%\Config~1\Temp”
MD “%HOMEPATH%\Config~1\Temp”
RD /S /Q C:\WINDOWS\Temp\
MD C:\WINDOWS\Temp
RD /S /Q C:\WINDOWS\Prefetch\
MD C:\WINDOWS\Prefetch
echo ==================================
echo *  Limpeza dos arquivos TEMP II  *
echo ==================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *      Checagem de disco         *
echo ==================================
start  chkdsk c: /f /r
pause
goto menu

:opcao4
cls
echo ==================================
echo *     Dresfagmentar de disco     *
echo ==================================
start defrag C: -f
pause
goto menu

:opcao5
cls
echo =======================================
echo * Verificador de Arquivos Corrompidos *
echo =======================================
start sfc /scannow
pause
goto menu

:opcao6
cls
echo =======================================
echo *         Alterar Data e Hora         *
echo =======================================
start date
start time
pause
goto menu

:opcao7
cls
echo =======================================
echo *   Abrir gerenciador de dispositivo  *
echo =======================================
start devmgmt. msc
pause
goto menu


:opcao8
cls
echo =======================================
echo *      Abrir Painel de Controle       *
echo =======================================
start control.exe
pause
goto menu


:opcao9
cls
echo =======================================
echo *      Sua versão do Windows é:       *
echo =======================================
start winver
pause
goto menu

:opcao0
echo =======================================
echo *                 SAINDO              *
echo =======================================
exit


## Rudivan Lima
