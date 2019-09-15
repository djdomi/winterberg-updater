rem Winterberg-Updater V1.0.0.0.0

:choice
Echo Please Select which Winterberg-Version you Want?
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


set /P c=Your Choice? (Character, after that enter)
if /I "%c%" EQU "A" goto :V10
if /I "%c%" EQU "B" goto :V08
if /I "%c%" EQU "C" goto :V07
if /I "%c%" EQU "D" goto :V06
if /I "%c%" EQU "E" goto :V05
if /I "%c%" EQU "F" goto :V04
if /I "%c%" EQU "G" goto :V03
if /I "%c%" EQU "H" goto :V02
if /I "%c%" EQU "I" goto :V01


goto choice