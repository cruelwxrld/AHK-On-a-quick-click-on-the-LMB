#MaxThreadsPerHotkey 2
isRunning := 0
CoordMode, ToolTip, Screen

XButton2::
isRunning := !isRunning
if (isRunning)
    ToolTip, Скрипт включен, A_ScreenWidth / 2, A_ScreenHeight / 2
else
    ToolTip, Скрипт выключен, A_ScreenWidth / 2, A_ScreenHeight / 2
SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
ToolTip
SetTimer, RemoveToolTip, Off
return

#If isRunning
LButton::
   While GetKeyState("LButton","P") && isRunning
      Send {LButton}
Return
Insert::Hotkey, LButton, Toggle
