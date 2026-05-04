@echo off
title AUG_OS_V1 - Obsidian Decay
cd /d "%~dp0"
echo [ AUG_OS_V1 ] Starting Nyrelika Bridge...
pip install -r requirements.txt --quiet
start "Nyrelika API" cmd /k python -m uvicorn opt.nyrelika.enavae_bridge:app --host 0.0.0.0 --port 8000
timeout /t 2 >nul
start "Nyrelika UI" cmd /k python -m http.server 8080 --bind 0.0.0.0
echo.
echo + Bridge: http://localhost:8000
echo + UI: http://localhost:8080/opt/nyrelika/
echo + Phantom icon loaded
echo.
pause
