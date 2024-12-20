' 打开我.vbs：主程序
' Author: Sateri

' Initialization
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
currentDir = fso.GetParentFolderName(WScript.ScriptFullName)

' 显示输入框，提示用户输入当前进度
progress = InputBox("请输入当前进度标识符，或者输入STA以开始。")
progress_Upper = UCase(progress)

' 根据用户输入的内容打开不同的文件
Select Case progress_Upper
    Case "STA"
        objShell.Run "wscript.exe """ & currentDir & "\src\A.vbs"" """ & currentDir & """", 1, False
    Case "MIG"
        objShell.Run "wscript.exe """ & currentDir & "\src\B.vbs"" """ & currentDir & """", 1, False
    Case "CWS"
        objShell.Run "wscript.exe """ & currentDir & "\src\C.vbs"" """ & currentDir & """", 1, False
    Case "DIS"
        objShell.Run "wscript.exe """ & currentDir & "\src\D.vbs"" """ & currentDir & """", 1, False
    Case "EOF"
        objShell.Run "wscript.exe """ & currentDir & "\src\E.vbs"" """ & currentDir & """", 1, False
    Case "FIN"
        objShell.Run "wscript.exe """ & currentDir & "\src\F.vbs"" """ & currentDir & """", 1, False
    Case Else
        MsgBox "无效的标识符，正在退出程序。", vbExclamation, "IDENTIFIER INVALID"
End Select

WScript.Quit