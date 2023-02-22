@echo off
echo,
echo,===
echo,
echo,===
echo,

cd /d "%~dp0"

if not exist app.bat echo(set "app=">app.bat && exit 1
if "xy" == "xy" call app.bat
if "x%app%" == "x" echo Please set app variable in app.bat &&PAUSE&&exit 1
if "xy" == "xy" call powershell ./bin/%~n0.ps1 %app% -u

echo,
delay 10 2>nul || ping -n 10 127.0.0.1>nul
exit 0
