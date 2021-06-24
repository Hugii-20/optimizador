RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp

DEL /S /Q "%TMP%\*.*"
DEL /S /Q "%TEMP%\*.*"
DEL /S /Q "%WINDIR%\Temp\*.*"
DEL /S /Q "%USERPROFILE%\Local Settings\Temp\*.*"
DEL /S /Q "%LOCALAPPDATA%\Temp\*.*"

PowerShell Clear-RecycleBin -Confirm:$false
@echo off
cd/
@echo
del *.log /a /s /q /f
@echo off
net stop wuauserv
net stop UsoSvc
net stop bits
net stop dosvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
ipconfig /flushdns


echo *
echo *
echo *
echo *
echo *
echo *
echo *
echo *
echo *
echo *
echo *
echo Hemos terminado con la limpieza!
pause
