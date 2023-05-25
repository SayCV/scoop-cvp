@echo off
echo,
echo,===
echo,
echo,===
echo,

cd /d "%~dp0"

if not exist app.ini echo,>app.ini &&echo,Please set app name in app.ini &&PAUSE&&exit 1

@set /a tee=0
@set /a errcnt=0
@if "xy" == "xy" @for /f "tokens=1*" %%I in (app.ini) do @(
    set /a tee+=1
    if not "x%%I" == "x" if "xy" == "xy" (
        echo,:: Updating %%I
        call powershell ./bin/%~n0.ps1 %%I -u
        if not %errorlevel% == 0 set /a errcnt+=1
    )
)

if not %errcnt% == 0 (
    echo,:: Detected update failed at %errcnt% postions.
    delay 20 2>nul || ping -n 20 127.0.0.1>nul
    exit 0
)

echo,
delay 10 2>nul || ping -n 10 127.0.0.1>nul
exit 0
