@echo off
color 0F
setlocal EnableDelayedExpansion
title Select C:\Windows\system32\cmd.exe

echo Microsoft Windows [Version 10.0.16299.221]
echo (c) 2017 Microsoft Corporation. All rights reserved.
echo.
:menu
set /P userinput=C:\Users\!USERNAME!\

if "!userinput!"=="tree" (
    goto treeCmd
) else if "!userinput!"=="netstat" (
    goto netstatCmd
) else if "!userinput!"=="dir" (
    goto dirCmd
) else if "!userinput!"=="cd" (
    goto cdCmd
) else (
    echo '!userinput!' is not recognized as an internal or external command, 
    echo operable program or batch file
    echo.
    goto menu
)

:cdCmd
echo Searching for CD(s) // DVD(s) // CD-ROM(s) ..
ping localhost -n 3 >nul
echo    No CD(s) // DVD(s) // CD-ROM(s) found on this device
echo Please insert or check if one of your devices are corrupted.
echo.
goto menu


:dirCmd
echo  Directory of C:\Users\!USERNAME!
echo 25/12/2016  14:55     (DIR)   DESKTOP
echo 25/12/2016  14:56     (DIR)   DOCUMENTS
echo 25/12/2016  15:00     (DIR)   DOWNLOADS
echo 25/12/2016  15:01     (DIR)   CONTACTS
echo 25/12/2016  15:01     (DIR)   FAVOURITES
echo 25/12/2016  15:01     (DIR)   MUSIC
echo 25/12/2016  15:02     (DIR)   PICTURES
echo 25/12/2016  15:03     (DIR)   VIDEOS
echo 25/12/2016  15:03     (DIR)   SAVED GAMES
echo 25/12/2016  15:03     (DIR)   CornHub  
echo             0 File(s) are currently suspended       0 Bytes
echo             1 Directory is currently infected (CornHub)       512 Bytes
echo.
goto menu

:netstatCmd
echo.
echo Active Connections
echo.
echo   Proto  Local Address         Foreign Address        State
echo   TCP    192.168.0.6:51080     45.123.3.105:http      ESTABLISHED
echo   TCP    127.0.0.1:51690       DESKTOP-!USERNAME!:51690  ESTABLISHED
echo.
echo No Infections found!
echo.
goto menu

:treeCmd
echo.
echo Scanning Tree Files
ping localhost -n 2 >nul
echo Tree Scan finished
echo   0 Errors
echo   0 Warnings
echo   0 Infections
echo.
goto menu

endlocal