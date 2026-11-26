@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
for %%I in ("%~dp0..\..\Cikti") do set "OUT=%%~fI"
if not exist "%OUT%" mkdir "%OUT%"
title Amcache Taramasi - CraftlimeNetwork SS Tools
echo [1/2] Kilitli Amcache.hve kopyalaniyor...
"%~dp0bin\RawCopy64.exe" /FileNamePath:C:\Windows\AppCompat\Programs\Amcache.hve /OutputPath:"%OUT%"
echo.
echo [2/2] AmcacheParser CSV raporu olusturuluyor...
"%~dp0bin\AmcacheParser.exe" -f "%OUT%\Amcache.hve" --csv "%OUT%"
echo.
echo ====================================================================
echo TAMAMLANDI! Ciktilar: %OUT%
echo TimelineExplorer ile "..._UnassociatedFileEntries.csv" dosyasini ac!
echo ====================================================================
pause
