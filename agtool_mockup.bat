@echo off
setlocal
chcp 65001 >nul
mode con: cols=120 lines=35
title AG-TOOL

for /f %%e in ('echo prompt $E^| cmd') do set "ESC=%%e"
set "P=%ESC%[95m"
set "W=%ESC%[97m"
set "G=%ESC%[92m"
set "R=%ESC%[0m"

cls
echo %P%
echo.
echo                    █████╗  ██████╗      ████████╗ ██████╗  ██████╗ ██╗     
echo                   ██╔══██╗██╔════╝      ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo                   ███████║██║  ███╗        ██║   ██║   ██║██║   ██║██║     
echo                   ██╔══██║██║   ██║        ██║   ██║   ██║██║   ██║██║     
echo                   ██║  ██║╚██████╔╝        ██║   ╚██████╔╝╚██████╔╝███████╗
echo                   ╚═╝  ╚═╝ ╚═════╝         ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo   ^< [More tools:]                                                                   ^< [Creator] Team AltSad          ^< [V] By Altwolf V3
echo   ^< [ harmless visual mockup only ] 
echo.
echo        ┌──────────────────────┐    ┌──────────────────────┐    ┌──────────────────────┐
echo        │        System        │    │        Search        │    │       Network        │
echo        │(01) IP Info          │    │(07) Username Search  │    │(13) Port Check       │
echo        │(02) DNS Info         │    │(08) Phone Lookup     │    │(14) Host Lookup      │
echo        │(03) Link Checker     │    │(09) Email Tracker    │    │(15) Ping Test        │
echo        │(04) Device Info      │    │(10) Image Search     │    │(16) Web Headers      │
echo        │(05) Discord Info     │    │(11) File Scan        │    │(17) WiFi Info        │
echo        │(06) Mini Tools       │    │(12) Google Dork      │    │(18) Firewall Status  │
echo        └──────────────────────┘    └──────────────────────┘    └──────────────────────┘
echo.
echo   [^|] navigate   [^<^>] switch column   [Enter] select   ^|   (01) IP Info
echo.
echo %R%

set /p choice=%P%Select an option 1-18: %W%

if "%choice%"=="1" goto ipinfo
if "%choice%"=="2" goto dns
if "%choice%"=="3" goto link
if "%choice%"=="4" goto device
if "%choice%"=="5" goto discord
if "%choice%"=="6" goto mini
if "%choice%"=="7" goto user
if "%choice%"=="8" goto phone
if "%choice%"=="9" goto email
if "%choice%"=="10" goto image
if "%choice%"=="11" goto file
if "%choice%"=="12" goto dork
if "%choice%"=="13" goto port
if "%choice%"=="14" goto host
if "%choice%"=="15" goto ping
if "%choice%"=="16" goto headers
if "%choice%"=="17" goto wifi
if "%choice%"=="18" goto firewall
goto end

:ipinfo
cls
color a
echo Running IP info...
ipconfig
goto endpause

:dns
cls
echo Showing DNS info...
ipconfig /all | findstr /i "DNS"
goto endpause

:link
cls
echo Link checker mockup...
echo Paste link support can be added here.
goto endpause

:device
cls
echo Device info...
systeminfo
goto endpause

:discord
cls
echo Discord info mockup only.
goto endpause

:mini
cls
echo Mini tools mockup only.
goto endpause

:user
cls
echo Username search mockup only.
goto endpause

:phone
cls
echo Phone lookup mockup only.
goto endpause

:email
cls
echo Email tracker mockup only.
goto endpause

:image
cls
echo Image search mockup only.
goto endpause

:file
cls
echo File scan...
dir /s
goto endpause

:dork
cls
echo Google dork mockup only.
goto endpause

:port
cls
echo Port check...
netstat -an
goto endpause

:host
cls
echo Host lookup...
hostname
nslookup localhost
goto endpause

:ping
cls
echo Ping test...
ping 127.0.0.1
goto endpause

:headers
cls
echo Web headers mockup only.
goto endpause

:wifi
cls
echo WiFi info...
netsh wlan show interfaces
goto endpause

:firewall
cls
echo Firewall status...
netsh advfirewall show allprofiles
goto endpause

:endpause
echo.
pause
goto end

:end
echo.
pause
exit