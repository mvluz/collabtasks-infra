@echo off
setlocal enabledelayedexpansion

rem Path to the .env file
set "envFile=%~dp0.env"

rem Read .env and set environment variables
for /f "usebackq tokens=1,* delims==" %%A in ("%envFile%") do (
    set "line=%%A"
    rem Ignore empty lines or lines starting with #
    echo !line! | findstr "^[#]" >nul
    if errorlevel 1 (
        set "key=%%A"
        set "value=%%B"
        set "!key!=!value!"
    )
)

rem Change directory to where docker-compose.yml is located
cd /d %~dp0

rem Start containers
docker-compose up --build -d