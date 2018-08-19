@echo off

REM Switch to Script Dir
cd %~dp0

REM Download Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Download Node
choco install -y nodejs-lts

REM Refresh PATH
call refreshenv

REM Download Git
choco install -y git

REM Install NodeRED
npm install