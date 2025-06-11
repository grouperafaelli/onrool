@echo off
cls
echo === DEPLOIEMENT ONROOL RAFAELLI V2 ===
cd /d "%~dp0"

git init
git remote remove origin 2>nul
git remote add origin https://github.com/grouperafaelli/onrool.git

git add .
for /f %%i in ('powershell -command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set datetime=%%i
git commit -m "Déploiement initial %datetime%"
git branch -M main
git push -u origin main

echo.
echo === DEPLOIEMENT TERMINE - VERIFIE SUR VERCEL ===
pause
