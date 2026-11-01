@echo off
rem Run this ONCE (double-click). It makes Windows start the data watcher every time you log in to Windows, so it is already running
rem whenever you open World of Warcraft, also from Battle.net. After that every /reload, logout and exit of the game updates the data,
rem pushes it to GitHub and rebuilds the CurseForge zip.
rem To remove it later:  schtasks /Delete /F /TN "SeviathsUsefulTools data update"
schtasks /Create /F /TN "SeviathsUsefulTools data update" /SC ONLOGON /RL LIMITED /TR "powershell.exe -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File \"D:\wow\World of Warcraft\_retail_\Interface\AddOns\SeviathsUsefulTools\tools\auto_update.ps1\""
if %errorlevel%==0 (
  schtasks /Run /TN "SeviathsUsefulTools data update"
  echo.
  echo Done. The watcher is running now and will start by itself every time you log in to Windows.
) else (
  echo.
  echo Could not create the task. Try right-click this file and "Run as administrator".
)
pause
