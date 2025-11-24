@echo off
chcp 65001 >nul
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║         🚀 HACKING VAULT - Tutorial Database v2.0              ║
echo ╠════════════════════════════════════════════════════════════════╣
echo ║  Iniciando servidor en http://localhost:8000                   ║
echo ║  Abre tu navegador en esa dirección                            ║
echo ║  Presiona Ctrl+C para detener                                  ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

cd /d "%~dp0"

REM Intenta con Node.js primero
where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo ✓ Node.js encontrado, usando servidor Node.js
    node servidor.js
) else (
    echo ✓ Usando servidor Python
    python -m http.server 8000
)
