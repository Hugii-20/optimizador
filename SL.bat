del /f /s /q "C:\Windows\Prefetch"
del /f /s /q "C:\Users\%username%\Appdata\Local\Temp"
del /f /s /q "C:\Windows\Temp"

PowerShell Clear-RecycleBin -Confirm:$false
@echo off
cd/
@echo
del *.log /a /s /q /f
del *.tmp /a /s /q /f
@echo off
net stop wuauserv
net stop UsoSvc
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
