@echo off

for %%a in ("%userprofile%\OneDrive - CenturyLink\[Backups]") do (set backup=%%a)

:menu
color 05 & title USMT Manager
mode con cols=56 lines=7

cls
echo     ________________________________________________
echo    /                                                \
echo    ^|=========== USMT CLIENT DATA MANAGER ===========^|
echo    \________________________________________________/
echo.
set /p server="Server name: "
echo.

cls
echo     ________________________________________________
echo    /                                                \
echo    ^|=========== USMT CLIENT DATA MANAGER ===========^|
echo    \________________________________________________/
echo.
set /p pc="Computer name: "

cls
color 0A
echo Resolving directory, please wait...
explorer /select, "\\%server%\USMT$\DATA\%pc%\USMT\USMT.MIG"

:choice
cls
color 05
echo     ________________________________________________
echo    /                                                \
echo    ^|=========== USMT CLIENT DATA MANAGER ===========^|
echo    \________________________________________________/
echo.
set /p choice="Do you want to backup this data? "
echo.
if /i "%choice%" == "y" goto :backup
if /i "%choice%" == "n" goto :menu
cls
color 0C
echo Please enter y or n to proceed...
pause > nul
goto :choice

:backup
echo.

cls
echo     ________________________________________________
echo    /                                                \
echo    ^|=========== USMT CLIENT DATA MANAGER ===========^|
echo    \________________________________________________/
echo.
set /p tag="Tag (INC, ticket, etc...): "

cls
color 0A
echo Processing backup, please wait...
echo f|xcopy /s /i /q /y /f "\\%server%\USMT$\DATA\%pc%\USMT\USMT.MIG" %backup%\USMT\%tag%\USMT.mig > nul
goto :menu

exit /b
