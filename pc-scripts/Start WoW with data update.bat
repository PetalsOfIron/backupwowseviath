@echo off
rem Starts the data watcher (if it is not already running) and then World of Warcraft.
rem While the game runs, every /reload, logout and exit bakes the collected data, pushes it to Data-wow and rebuilds the CurseForge zip.
powershell -NoProfile -Command "if (-not (Get-CimInstance Win32_Process -Filter \"Name='powershell.exe'\" | Where-Object { $_.CommandLine -like '*auto_update.ps1*' })) { Start-Process powershell -WindowStyle Hidden -ArgumentList '-NoProfile','-ExecutionPolicy','Bypass','-File','D:\wow\World of Warcraft\_retail_\Interface\AddOns\SeviathsUsefulTools\tools\auto_update.ps1' }"
start "" "D:\wow\World of Warcraft\_retail_\Wow.exe"
