' A.vbs: The program to start Sateri Project Demo A Side
' Author: Sateri

' Initialization
Set objShell = CreateObject("WScript.Shell")
currentDir = WScript.Arguments(0)
audioPath = currentDir & "\assets\audio\a-side_192kbps_final.mp3"
BPath = currentDir & "\src\B.vbs"

' GREETINGS
objShell.Popup "硬币的正面。", 2, "A-SIDE", 64
objShell.Popup "Sateri Project Demo A Side: 自由链接", 2, "A-SIDE: START(STA)", 64

' ACTIVATE AUDIO
objShell.Run Chr(34) & audioPath & Chr(34), 1, False

' ANOTHER GREETINGS
objShell.Popup "Enjoy!", 2, "Enjoy!", 64

' MSG EXIT CODE IN WARNING 
WScript.Sleep 276000 ' 276,000 ms = 4 mins 36 secs = 4'38" - 2"
'TEST ONLY:
' WScript.Sleep 2000 ' 2 secs

objShell.Popup "下一个进度的标识符为""MIG""。", 5, "MIG", 64

MsgBox "EXIT 'CODE': 1", vbExclamation, "This is NOT a warning."

' JUMP TO B.VBS
Set objShell = CreateObject("WScript.Shell")
objShell.Run "wscript.exe """ & BPath & """", 1, False

' EXIT
WScript.Quit 1