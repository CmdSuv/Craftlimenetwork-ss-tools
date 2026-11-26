@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
for %%I in ("%~dp0..\..\Cikti") do set "OUT=%%~fI"
if not exist "%OUT%" mkdir "%OUT%"
title MFTECmd ($MFT) Taramasi - CraftlimeNetwork SS Tools
echo C:\$MFT analiz ediliyor (15-40 saniye surebilir, bekleyin)...
"%~dp0bin\MFTECmd.exe" -f "C:\$MFT" --csv "%OUT%" --csvf mft_rapor.csv
echo.
echo ====================================================================
echo TAMAMLANDI! Rapor: %OUT%\mft_rapor.csv
echo TimelineExplorer ile ac -> InUse=False, Extension=.exe / .jar / .dll
echo ====================================================================
pause
