@echo off
title Deploy TreinoABC

echo ===============================
echo   DEPLOY AUTOMATICO TREINOABC
echo ===============================
echo.

cd /d "%~dp0"

echo Verificando alteracoes...
git status

echo.
echo Adicionando arquivos...
git add .

echo.
set /p msg=Digite a mensagem do commit: 

git commit -m "%msg%"

echo.
echo Enviando para o GitHub...
git push

echo.
echo ===============================
echo      DEPLOY FINALIZADO
echo ===============================
pause
