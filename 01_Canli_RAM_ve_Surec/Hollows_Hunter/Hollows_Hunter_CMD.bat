@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
title Hollows Hunter - Yonetici CMD
echo ====================================================================
echo  HOLLOWS HUNTER HAZIR (Klasor: %CD%)
echo ====================================================================
echo  Sadece Minecraft (hizli)  : hollows_hunter64.exe /pname javaw.exe /shellc 1
echo  Sadece Minecraft (detayli): hollows_hunter64.exe /pname javaw.exe /shellc 3 /hooks
echo  javaw + java birlikte     : hollows_hunter64.exe /pname javaw.exe;java.exe /shellc 1 /hooks
echo  Tum bilgisayar            : hollows_hunter64.exe /shellc 1 /hooks
echo ====================================================================
echo.
cmd /k
