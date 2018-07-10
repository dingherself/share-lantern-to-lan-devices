@echo off
rem Get current ip address
for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do (
 set IP=%%a
)
echo Proxy Settings
echo Type: Manual
echo Server: %IP%
echo Port: 8787
echo Authentication: None
rem Run lantern
call %appdata%\Lantern\lantern.exe -addr %IP%:8787
pause>nul
