' B.vbs: The program to start Sateri Project Demo B Side
' Author: Sateri

' 获取传递的目录路径
currentDir = WScript.Arguments(0)

' Initialization
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set player = CreateObject("WMPlayer.OCX")

cialloPath = currentDir & "\assets\audio\ciallo.wav"

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

' CHECK CIALLO
If fso.FileExists(cialloPath) Then
    Set media = player.newMedia(cialloPath)
    player.currentMedia = media
    player.controls.play

    ' 等待音频播放完成
    Do While player.playState <> 1 ' 1 表示播放已停止
        WScript.Sleep 1000
    Loop

    ' 关闭播放器
    player.close
End If

' REAL CONTENT BEGINS HERE

' CIALLO
objShell.Popup "Ciallo～(∠・ω< )⌒☆", 1, "Ciallo～(∠・ω< )⌒☆", 32

' GREETINGS
objShell.Popup "硬币的反面。", 2, "B-SIDE", 64
objShell.Popup "Sateri Project Demo B Side: 回渡的噪音", 2, "B-SIDE: MIGRATION(MIG)", 64

WScript.Quit