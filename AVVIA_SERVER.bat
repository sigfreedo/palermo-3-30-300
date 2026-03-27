@echo off
echo ========================================
echo   Verde a Palermo - Avvio Server
echo ========================================
echo.
echo Avvio server web locale sulla porta 8000...
echo.
echo Una volta avviato, apri il browser e vai su:
echo http://localhost:8000/verde_palermo_simple.html
echo.
echo Per fermare il server, premi Ctrl+C
echo.
echo ========================================
echo.

python -m http.server 8000
