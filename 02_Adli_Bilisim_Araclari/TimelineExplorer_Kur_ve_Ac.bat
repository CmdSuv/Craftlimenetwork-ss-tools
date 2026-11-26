@echo off
set "BASE=%~dp0"
set "TLE_DIR=%BASE%TimelineExplorer"
set "TLE_EXE=%TLE_DIR%\TimelineExplorer.exe"

if exist "%TLE_EXE%" (
    start "" "%TLE_EXE%"
    exit /b 0
)

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

echo [1/3] .NET 10 Desktop Runtime kontrol ediliyor...
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$has = (& 'C:\Program Files\dotnet\dotnet.exe' --list-runtimes 2>$null | Select-String 'Microsoft.WindowsDesktop.App 10.');" ^
  "if (-not $has) {" ^
  "  Write-Host '  .NET 10 Desktop Runtime indiriliyor ve kuruluyor...';" ^
  "  $f = Join-Path $env:TEMP 'dotnet10-desktop-x64.exe';" ^
  "  curl.exe -L -o $f 'https://aka.ms/dotnet/10.0/windowsdesktop-runtime-win-x64.exe';" ^
  "  Start-Process -FilePath $f -ArgumentList '/install','/quiet','/norestart' -Wait;" ^
  "  Remove-Item $f -Force -ErrorAction SilentlyContinue;" ^
  "} else { Write-Host '  .NET 10 Desktop Runtime zaten kurulu.' }"

echo [2/3] TimelineExplorer indiriliyor (~90 MB)...
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$zip = Join-Path '%BASE%' 'TimelineExplorer.zip';" ^
  "curl.exe -L -o $zip 'https://download.ericzimmermanstools.com/net/TimelineExplorer.zip';" ^
  "Expand-Archive -Path $zip -DestinationPath '%BASE%' -Force;" ^
  "Remove-Item $zip -Force -ErrorAction SilentlyContinue"

echo [3/3] Intel CET (0x80131506) uyumluluk ayari uygulaniyor...
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Set-ProcessMitigation -Name TimelineExplorer.exe -Disable UserShadowStack, UserShadowStackStrictMode -ErrorAction SilentlyContinue"

if exist "%TLE_EXE%" (
    echo Kurulum tamamlandi! TimelineExplorer aciliyor...
    start "" "%TLE_EXE%"
) else (
    echo HATA: TimelineExplorer.exe bulunamadi. Internet baglantinizi kontrol edin.
    pause
)
