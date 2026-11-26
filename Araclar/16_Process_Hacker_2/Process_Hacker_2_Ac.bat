@echo off
set "EXE=%~dp0bin\x64\ProcessHacker.exe"
if not exist "%EXE%" (
    echo ProcessHacker.exe bulunamadi: %EXE%
    pause
    exit /b 1
)
powershell -NoProfile -Command "Start-Process -FilePath '%EXE%' -Verb RunAs"
