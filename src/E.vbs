' E.vbs: The program to start Sateri Project Demo E Side
' Author: Sateri

' PATH
currentDir = WScript.Arguments(0)
files_dir = currentDir & "\assets\txt"
poems_dir = currentDir & "\assets\txt\poems"

' INITIALIZATION
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' GREETINGS
Msgbox "终结点", vbSystemModal + vbInformation, "E-SIDE"
objShell.Popup "Sateri Project Demo E Side: 终局", 2, "E-SIDE: End of File", 64

' ITERATE OPEN FILES
defaultWaitingTime = 5000 ' 5 sec
Set files = fso.GetFolder(files_dir).Files

For Each file In files
		objShell.Run "notepad.exe """ & file.Path & """", 1, False
		WScript.Sleep defaultWaitingTime
		IF defaultWaitingTime > 300 Then
			defaultWaitingTime = defaultWaitingTime - 300
		End If
Next

WScript.Sleep 5000

' CLOSE ALL FILES
objShell.Run "taskkill /f /im notepad.exe", 0, True

MsgBox "它们全都死在了这里。", vbSystemModal + vbInformation, "END"
MsgBox "感谢您游玩Sateri Project Demo。", vbSystemModal + vbInformation, "END?"

' EXIT
WScript.Quit