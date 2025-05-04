@echo off
REM Launch the PowerShell script
powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0\Setup-Environment.ps1" %*
pause
exit /b %errorlevel%
