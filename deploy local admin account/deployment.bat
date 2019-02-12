@echo off
set path=%~dp0
set /p computerlist="Enter filename: "

echo %path%%computerlist%
echo.

FOR /F "tokens=*" %%A IN (%path%%computerlist%) DO (
	C:\psexec \\%%A -c deployaccount.bat
	)

pause

exit
