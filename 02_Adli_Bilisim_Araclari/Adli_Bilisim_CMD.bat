@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
if not exist "%CD%\Cikti" mkdir "%CD%\Cikti"
title CraftlimeNetwork SS - Adli Bilisim Yonetici CMD
echo ====================================================================
echo  ADLI BILISIM KOMUT EKRANI HAZIR (Klasor: %CD%)
echo ====================================================================
echo  [13] AMCACHE:
echo    RawCopy64.exe /FileNamePath:C:\Windows\AppCompat\Programs\Amcache.hve /OutputPath:"%CD%\Cikti"
echo    AmcacheParser.exe -f "%CD%\Cikti\Amcache.hve" --csv "%CD%\Cikti"
echo.
echo  [14] SRUM (SRUDB.dat):
echo    RawCopy64.exe /FileNamePath:C:\Windows\System32\sru\SRUDB.dat /OutputPath:"%CD%\Cikti"
echo    SrumECmd.exe -f "%CD%\Cikti\SRUDB.dat" --csv "%CD%\Cikti"
echo.
echo  [15] MFT (C:\$MFT):
echo    MFTECmd.exe -f "C:\$MFT" --csv "%CD%\Cikti" --csvf mft_rapor.csv
echo ====================================================================
echo.
cmd /k
