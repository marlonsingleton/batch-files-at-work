@echo off

REM Check for removable storage devices on remote machine

:main
echo "Please enter a valid hostname or type exit to quit"

set /p host="Enter Hostname: "

if %host% == exit goto escape

wmic /node:"%host%" diskdrive where interfacetype='USB' list brief
wmic /node:"%host%" logicaldisk get description, name

pause
goto main

:escape
exit

