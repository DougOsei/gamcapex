@echo off
title GAMC Website Local Server
echo ========================================================
echo  Ghana Association of Microfinance Companies (GAMC)
echo ========================================================
echo.
echo Starting local web server on port 8000...
echo Opening http://localhost:8000 in your web browser...
start http://localhost:8000
python -m http.server 8000
pause
