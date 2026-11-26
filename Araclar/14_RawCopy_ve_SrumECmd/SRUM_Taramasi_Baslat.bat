@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
for %%I in ("%~dp0..\..\Cikti") do set "OUT=%%~fI"
if not exist "%OUT%" mkdir "%OUT%"
title SRUM (SRUDB.dat) Taramasi - CraftlimeNetwork SS Tools
echo [1/2] Kilitli SRUDB.dat kopyalaniyor...
"%~dp0bin\RawCopy64.exe" /FileNamePath:C:\Windows\System32\sru\SRUDB.dat /OutputPath:"%OUT%"
echo.
echo [2/2] SrumECmd CSV raporlari olusturuluyor...
"%~dp0bin\SrumECmd.exe" -f "%OUT%\SRUDB.dat" --csv "%OUT%"
echo.
echo ====================================================================
echo TAMAMLANDI! Ciktilar: %OUT%
echo TimelineExplorer ile "..._SrumECmd_NetworkUsages_Output.csv" ac!
echo ====================================================================
pause
