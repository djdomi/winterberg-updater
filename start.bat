@echo off
@rem Winterberg-Updater V1.0.0.0.0 (Batch-Style)



set SYNC_DIRFILE=etc/path.txt
set SYNC_CMD=bin\rsync.exe 
set SYNC_OPT=-avzp --compress-level=3


goto start

:start
@if exist %SYNC_DIRFILE% ( set /p sync_path=<%SYNC_DIRFILE% ) else (
echo Please enter the Path of your EM4 installation
echo ## ATTENTION ##
echo the path must have the following syntax:
echo if your path is c:\programme\sixtoon\emergency4
set /P sync_path="Enter your path: "
@echo %SYNC_PATH% > %SYNC_DIRFILE%
@mkdir -p %SYNC_PATH%
@cls
@goto choice1
)
:choice1
Echo Please Select which Winterberg-Version you want?
echo enter the following numbers/letters
echo A for Winterberg V10 (10.xx)
echo B for Winterberg V09 (9.xx)
echo C for Winterberg V08 (8.xx)
echo D for Winterberg V07 (7.xx)
echo E for Winterberg V06 (6.xx)
echo F for Winterberg V05 (5.xx)
echo G for Winterberg V04 (4.xx)
echo H for Winterberg V03 (3.xx)
echo I for Winterberg V02 (2.xx)
echo J for Winterberg V01 (1.xx)
echo Q for quit/exit
set /P C="Your Choice? (Character, after that enter)"
@if /I "%C%" EQU "A" goto :V10
@if /I "%C%" EQU "B" goto :V09
@if /I "%C%" EQU "C" goto :V08
@if /I "%C%" EQU "D" goto :V07
@if /I "%C%" EQU "E" goto :V06
@if /I "%C%" EQU "F" goto :V05
@if /I "%C%" EQU "G" goto :V04
@if /I "%C%" EQU "H" goto :V03
@if /I "%C%" EQU "I" goto :V02
@if /I "%C%" EQU "J" goto :V01
@if /I "%C%" EQU "Q" goto :eof
goto choice1




:V10
cls
rem wem10r
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::wem10r %SYNC_PATH%/WEM10/
pause
goto choice1


:V09
cls
rem winterberg_sp_09
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg_sp_09 %SYNC_PATH%/WEM09
goto choice1

:V08
cls
rem winterberg88
rem winterberg889
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg889 %SYNC_PATH%/WEM08
goto choice1


:V07
cls
rem winterberg75
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg75 %SYNC_PATH%/WEM07
goto choice1

:V06
cls
rem winterberg60
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg60 %SYNC_PATH%/WEM06
goto choice1


:V05
cls
rem winterberg58
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg58 %SYNC_PATH%/WEM05
goto choice1

:V04
cls
rem winterberg40
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg40 %SYNC_PATH%/WEM04
goto choice1


:V03
cls
echo Sorry, no release avaible
pause
cls
@goto choice1


:V02
cls
rem winterberg21
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg21 %SYNC_PATH%/WEM02
goto choice1


:V01
cls
rem winterberg10
%SYNC_CMD% %SYNC_OPT% ccbnet01.ccb-net.it::winterberg10 %SYNC_PATH%/WEM01
goto choice1









:eof