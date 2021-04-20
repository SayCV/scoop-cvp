@chcp 65001
@echo,
@echo,=====
@echo,SPDX-License-Identifier: (GPL-2.0+):
@echo,
@echo,!!! THIS IS NOT GUARANTEED TO WORK !!!
@echo,
@echo,Copyright (c) 2018-2021, SayCV
@echo,=====
@echo,

@REM @if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
@cd /d "%~dp0/"
@set "TOPDIR=%cd%"
@title "%~n0"

@if "xy" == "xN" @goto :skip_getadmin_privileges
@>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || @(
    @ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    @ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    @"%TEMP%\Getadmin.vbs"
    @DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    @Exit
)
:skip_getadmin_privileges

@REM Enable extensions, the `verify` call is a trick from the setlocal help
@VERIFY other 2>nul
@SETLOCAL EnableDelayedExpansion
@IF %ERRORLEVEL% == 1 @(
    @ECHO Unable to enable extensions
    @GOTO failure
)

"FilterLab%%202.0.exe" /s /v/qn /B.

:script-done
:failure

:@IF NOT %ERRORLEVEL% == 0  @PAUSE && @EXIT 1
@EXIT 0
