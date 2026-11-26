@echo off
set "EXE=%~dp0Process_Hacker_2\x64\ProcessHacker.exe"
if not exist "%EXE%" (
    echo ProcessHacker.exe bulunamadi: %EXE%
    pause
    exit /b 1
)
powershell -NoProfile -Command "Start-Process -FilePath '%EXE%' -Verb RunAs"
