@echo off
@rem Winterberg-Updater V1.0.0.0.0 (Batch-Style)




set SYNC_CMD=bin/rsync.exe 
set SYNC_OPT=
rem SYNC_PATH="/cygdrive/C/winterberg_updater"

goto start

:start
@if exist etc/path.txt ( set /p sync_path=<etc/path.txt ) else (
echo Please enter the Path of your EM4 installation
echo ## ATTENTION ##
echo the path must have the following syntax:
echo if your path is c:\programme\sixtoon\emergency4
set /P sync_path="Enter your path like: /cygwin/C/programme/sixtoon/emergency4"
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
set /P c=Your Choice? (Character, after that enter)
@if /I "%c%" EQU "A" goto :V10
@if /I "%c%" EQU "B" goto :V08
@if /I "%c%" EQU "C" goto :V07
@if /I "%c%" EQU "D" goto :V06
@if /I "%c%" EQU "E" goto :V05
@if /I "%c%" EQU "F" goto :V04
@if /I "%c%" EQU "G" goto :V03
@if /I "%c%" EQU "H" goto :V02
@if /I "%c%" EQU "I" goto :V01
@if /I "%C%" EQU "Q" goto :eof
@goto choice




:V10
rem wem10r

:V09
rem winterberg_sp_09

:V08
rem winterberg88
rem winterberg889

:V07
rem winterberg75

:V06
rem winterberg60

:V05
rem winterberg58

:V04
rem winterberg40

:V03
echo Sorry, no release yet avaible
pause
@goto start

:V02
rem winterberg21

:V01
rem winterberg10









:eof