' D.vbs: The program to start Sateri Project Demo D Side
' Author: Sateri

' PATH
currentDir = WScript.Arguments(0)
file = currentDir & "\assets\story\index.html"

' INITIALIZATION
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' GREETINGS
MsgBox "硬币之外的世界", vbInformation + vbSystemModal, "D-SIDE"
objShell.Popup "Sateri Project Demo D Side: 春眠子", 2, "D-SIDE: Died in Spring(DIS)", 64

' TIPS
MsgBox "在故事里，寻找答案。", vbInformation + vbSystemModal, "TIPS"

' OPEN STORY
objShell.Run "cmd.exe /c start """" """ & file & """", 1, False