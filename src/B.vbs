' B.vbs: The program to start Sateri Project Demo B Side
' Author: Sateri

' PATH
currentDir = WScript.Arguments(0)

' INITIALIZATION
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' TRIGGER PASSWORD CHECK
password = InputBox("秘钥应形如""XXX[空格]XXX[空格]XXX""。", "Please input the 'CODE'")

' CHECK PASSWORD
If password <> "000 000 001" Then
    ' PASSWORD INCORRECT
    objShell.Popup "秘钥错误，程序将退出。", 1, "ERROR", 16
    WScript.Quit
End If

' PASSWORD CORRECT

WScript.Sleep 1000

' REAL CONTENT BEGINS HERE

' CIALLO
objShell.Popup "Ciallo～(∠・ω< )⌒☆", 1, "Ciallo～(∠・ω< )⌒☆", 32

' GREETINGS
MsgBox "硬币的反面。", vbInformation + vbSystemModal, "B-SIDE"
objShell.Popup "Sateri Project Demo B Side: 回渡的噪音", 2, "B-SIDE: BACKTRACKING MIGRATION(MIG)", 64

WScript.Quit