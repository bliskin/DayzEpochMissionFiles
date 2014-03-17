@echo off
echo.
echo KILL arma2oaserver.exe
set serverkill="E:\Program Files (x86)\Steam\SteamApps\common\Arma 2 Operation Arrowhead"
cd /d %serverkill%
taskkill /im arma2oaserver.exe
echo.
echo Kill Bec.exe
set beckill="C:\Bec"
cd /d %beckill%
taskkill /im Bec.exe
echo.
 
timeout 10
 
echo.
echo Starting Dayz Server
:: start the server..
set dayzpath="E:\Program Files (x86)\Steam\SteamApps\common\Arma 2 Operation Arrowhead"
cd /d %dayzpath%
start "" "DayZ_Epoch_instance_11_Chernarus.bat"
echo.
echo Starting Bec
timeout 10
:: start bec
set becpath="C:\Bec"
cd /d %becpath%
start "" "Bec.exe" -f Config.cfg
echo.
echo Server Started 100%
 
cls
@exit