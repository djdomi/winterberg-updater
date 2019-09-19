@echo off >NUL
@cls
@rem Winterberg-Updater V0.0.0.0.0 extrem buggy alpha (Batch-Style) by djdomi (wiki-mod.de / winterberg-updater / winterberg.wiki-mod.de) https://t.me/winterbergmod
@SETLOCAL EnableDelayedExpansion
rem Color 0A - DEFAULT, green
rem Color 74 - ATTENTION Text, Grey - Red
rem Color 45 - ERROR Text
bin\curl\curl -s https://winterberg-updater.wiki-mod.de/update.txt >NUL
set SYNC_DIRFILE=etc/path_unix.txt
set SYNC_DIRFILE2=etc/path_win.txt
set SYNC_CMD=bin\rsync.exe 
set SYNC_OPT=-avzp --compress-level=1 --relative --progress
set SYNC_DIRCMD=bin\cygpath

goto start

:start
@if exist %SYNC_DIRFILE% ( set /p sync_path2=<%SYNC_DIRFILE% ) else (
color 74

echo #### ATTENTION ####
echo.
echo Please enter the Path of your EM4 installation
echo "as example: c:\programme\sixtoon\emergency4"

set /P sync_path="Enter your path: "
echo %sync_path% > %SYNC_DIRFILE2%
%SYNC_DIRCMD% %SYNC_PATH% > %SYNC_DIRFILE%

rem @echo %SYNC_PATH%



@cls
@goto choice1
)
:choice1
color 0A
if exist %SYNC_DIRFILE2% ( set READ2=< %SYNC_DIRFILE2%|echo Path Set as: %READ2%) else ( goto start )
if exist %SYNC_DIRFILE% ( set READ1=< %SYNC_DIRFILE%|echo Path Set as: %READ1%) else ( goto start )
echo.
Echo "Please Select which Winterberg-Version you want?"
echo.
echo "-->> A for Winterberg V10 (10.xx)"
echo "-->> B for Winterberg V09 (9.xx)"
echo "--->> C for Winterberg V08 (8.80)"
echo "--->> CC for Winterberg V08.89 (8.89)"
echo "-->> D for Winterberg V07 (7.xx)"
echo "-->> E for Winterberg V06 (6.xx)"
echo "-->> F for Winterberg V05 (5.xx)"
echo "-->> G for Winterberg V04 (4.xx)"
echo "-->> H for Winterberg V03 (3.xx)"
echo "-->> I for Winterberg V02 (2.xx)"
echo "-->> J for Winterberg V01 (1.xx)"
echo "-->> RESET for Reset the path in case of problems"
echo.
echo "-> HELP for I need Support via Chat?"
echo "-->> Q for quit/exit"
echo.
set /P C="Your Choice? (Character, after that enter)"
@if /I "%C%" EQU "A" goto :V10
@if /I "%C%" EQU "B" goto :V09
@if /I "%C%" EQU "C" goto :V08
@if /I "%CC%" EQU "C" goto :V0889
@if /I "%C%" EQU "D" goto :V07
@if /I "%C%" EQU "E" goto :V06
@if /I "%C%" EQU "F" goto :V05
@if /I "%C%" EQU "G" goto :V04
@if /I "%C%" EQU "H" goto :V03
@if /I "%C%" EQU "I" goto :V02
@if /I "%C%" EQU "J" goto :V01
@if /I "%C%" EQU "Q" goto :eof
@if /I "%C%" EQU "reset" goto :res
@IF /I "%C%" EQU "help" goto :gethelp
@goto choice1

:gethelp
Echo Starting Telegram Link
start https://t.me/winterbergmod
Echo Starting Winterberg Wiki
start https://winterberg.wiki-mod.de
echo if you still have questions, contact
echo create a ticket at support@wiki-mod.de
goto eof

:wrong
color 46
echo something went (suddenly) wrong
echo we try from beginng and reset the path
echo if you _D_O_N_T_ want to continue CTRL+C%
echo else, press Enter
pause
goto res

:res
echo del %~dp0\etc\path_unix.txt %~dp0\etc\path_win.txt
pause
goto start



:V10
cls
color 0B
rem wem10r
echo mkdir %SYNC_PATH2%\WEM10
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::wem10r %SYNC_PATH2%/WEM10/
pause
goto choice1


:V09
cls
color 0B
rem winterberg_sp_09
mkdir %SYNC_PATH2%\WEM09
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg_sp_09 %SYNC_PATH2%/WEM09
goto choice1

:V08
cls
color 0B
rem winterberg88
rem winterberg889
mkdir %SYNC_PATH2%\WEM08
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg88 %SYNC_PATH2%/WEM08
goto choice1

:V0889
rem winterberg889
mkdir %SYNC_PATH2%\WEM0889
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg889 %SYNC_PATH2%/WEM0889
goto choice1


:V07
color 0B
cls
rem winterberg75
mkdir %SYNC_PATH2%\WEM07
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg75 %SYNC_PATH2%/WEM07
goto choice1

:V06
color 0B
cls
rem winterberg60
mkdir %SYNC_PATH2%\WEM06
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg60 %SYNC_PATH2%/WEM06
goto choice1


:V05
cls
rem winterberg58
mkdir %SYNC_PATH2%\WEM05
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg58 %SYNC_PATH2%/WEM05
goto choice1

:V04
color 0B
cls
rem winterberg40
mkdir %SYNC_PATH2%\WEM04
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg40 %SYNC_PATH2%/WEM04
goto choice1


:V03
color 0c
cls
echo.
echo.
timeout 1 >NUL
echo "                (__)"
echo "                (oo)"
echo "          /------\/"
echo "         / |    ||"
echo "        *  /\---/\"
echo "           ~~   ~~"
timeout 1 >NUL
echo ":-( Sorry, no release avaible, if you know about this contact updater+winterberg_v3@wiki-mod.de )-:"

echo.
timeout 0 >NUL
echo.
timeout 0 >NUL
pause
cls
@goto choice1


:V02
mkdir %SYNC_PATH2%\WEM02
cls
rem winterberg21
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg21 %SYNC_PATH2%/WEM02
goto choice1


:V01
cls
mkdir %SYNC_PATH2%\WEM01
rem winterberg10
%SYNC_CMD% %SYNC_OPT% winterberg-updater.wiki-mod.de::winterberg10 %SYNC_PATH2%/WEM01
goto choice1









:eof