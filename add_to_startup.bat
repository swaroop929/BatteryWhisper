@echo off

:: Get the directory of the script
for %%i in (%0) do set "script_dir=%%~dpi"
set "python_interpreter=pythonw.exe"
set "script_path=%script_dir%battery_Whisper.py"

:: Set the shortcut name
set "shortcut_name=BatteryWhisper.lnk"

:: Create the shortcut
set "startup_folder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "shortcut_target=%startup_folder%\%shortcut_name%"

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%shortcut_target%" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%python_interpreter%" >> CreateShortcut.vbs
echo oLink.Arguments = """%script_path%""" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

:: End of script
