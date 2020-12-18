@echo off
set disk=C
set path=%disk%:\Program Files (x86)\Rockstar Games\Grand Theft Auto V
set killOnStartup=0
if %killOnStartup% EQU 0 goto :mainBis
:main
echo #--------------------#
echo # Shutting down GTA5 #
echo #--------------------#
"%systemroot%\System32\taskkill" /IM GTA5.exe /F > NUL
echo #-----------------#
echo # Restarting GTA5 #
echo #-----------------#
"%systemroot%\System32\timeout" 5 /nobreak > NUL
cd "%path%\"
%disk%:
copy /Y "%path%\commandline_starter.txt" "%path%\commandline.txt" > NUL
start "PlayGTAV.exe" "%path%\PlayGTAV.exe" > NUL
:mainBis
echo #---------------------------------#
echo # Press a key to stop the process #
echo # Send Ctrl+C to stop the script  #
echo #---------------------------------#
@pause > NUL
goto :main
