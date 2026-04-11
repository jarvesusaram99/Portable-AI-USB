@echo off
title Portable AI - Multi-Model Setup
color 0E

echo ===================================================
echo     PORTABLE UNCENSORED AI - USB SETUP
echo ===================================================
echo.
echo This will download and configure AI models onto
echo your USB drive. You'll get to CHOOSE which models
echo to install from a curated list.
echo.
echo  - 6 preset models (uncensored + standard)
echo  - Custom model support (bring your own GGUF)
echo  - Minimum USB space: 16 GB (32 GB recommended)
echo.
echo Make sure you have a good internet connection!
echo.
pause

:: Run the PowerShell setup script from the windows/ directory
powershell -ExecutionPolicy Bypass -File "%~dp0windows\install-core.ps1"

echo.
echo ===================================================
echo     SETUP COMPLETE! You're ready to go!
echo ===================================================
echo.
echo To start your AI, double-click start-windows.bat
echo.
pause
