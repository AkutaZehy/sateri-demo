' E.vbs: The program to start Sateri Project Demo E Side
' Author: Sateri

' PATH
currentDir = WScript.Arguments(0)
thought_dir = currentDir & "\assets\txt\thought"
strike_dir = currentDir & "\assets\txt\strike"
poem_dir = currentDir & "\assets\txt\poem"

' INITIALIZATION
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' GREETINGS
Msgbox "终结点", vbSystemModal + vbInformation, "E-SIDE"
objShell.Popup "Sateri Project Demo E Side: 终局", 2, "E-SIDE: End of File", 64

' MERGE FILES
Set allFiles = CreateObject("Scripting.Dictionary")
Set thoughtFiles = fso.GetFolder(thought_dir).Files
Set strikeFiles = fso.GetFolder(strike_dir).Files
Set poemFiles = fso.GetFolder(poem_dir).Files

For Each file In thoughtFiles
    allFiles.Add file.Path, file
Next

For Each file In strikeFiles
    allFiles.Add file.Path, file
Next

For Each file In poemFiles
    allFiles.Add file.Path, file
Next

' ITERATE RANDOM FILES
defaultWaitingTime = 3000 ' 3 sec
totalTime = 60000 ' 1 min
startTime = Timer

Randomize

Do While allFiles.Count > 0 And (Timer - startTime) * 1000 < totalTime
    randomIndex = Int((allFiles.Count) * Rnd)
    filePath = allFiles.Keys()(randomIndex)
    objShell.Run "notepad.exe """ & filePath & """", 1, False
    WScript.Sleep defaultWaitingTime
    allFiles.Remove filePath
    If defaultWaitingTime > 200 Then
        defaultWaitingTime = defaultWaitingTime - 200
    End If
		If defaultWaitingTime < 200 And defaultWaitingTime > 20 Then
			  defaultWaitingTime = defaultWaitingTime - 20
		End If
Loop

WScript.Sleep 5000

' ENDING
objShell.Run "taskkill /f /im notepad.exe", 0, True

WScript.Sleep 1000
objShell.Popup "它们全都死在了这里。", 2, "END", 64
MsgBox "感谢您游玩Sateri Project Demo。", vbSystemModal + vbInformation, "END?"

' EXIT
WScript.Quit