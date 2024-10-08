' 打开我.vbs：主程序
' Author: Sateri

' Initialization
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
currentDir = fso.GetParentFolderName(WScript.ScriptFullName)

' 显示输入框，提示用户输入当前进度
progress = InputBox("请输入当前进度标识符，空置为从头开始：")
progress_Upper = UCase(progress)

' 根据用户输入的内容打开不同的文件
Select Case progress_Upper
    Case "", "STA"
        objShell.Run "wscript.exe """ & currentDir & "\src\A.vbs"" """ & currentDir & """", 1, False
    Case "MIG"
        objShell.Run "wscript.exe """ & currentDir & "\src\B.vbs"" """ & currentDir & """", 1, False
    Case "C"
        objShell.Run "wscript.exe """ & currentDir & "\src\C.vbs"" """ & currentDir & """", 1, False
    Case Else
        MsgBox "无效的标识符，正在退出程序。", vbExclamation, "IDENTIFIER INVALID"
End Select

WScript.Quit