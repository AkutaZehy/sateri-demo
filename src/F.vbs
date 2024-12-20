' F.vbs: The program to start Sateri Project Demo F&G Side
' Author: Sateri

' PATH
currentDir = WScript.Arguments(0)
wallpaperPath = currentDir & "\assets\images\fin.jpg"

' INITIALIZATION
Set objShell = CreateObject("WScript.Shell")

Set fso = CreateObject("Scripting.FileSystemObject")

' GREETINGS
Msgbox "真正的终结", vbSystemModal + vbInformation, "F-SIDE"

' WARNING
MsgBox "再之后，就回不了头了。" & vbCrLf & "请保存重要的文件，并确保其余程序彻底关闭。", vbSystemModal + vbExclamation, "WARNING"

input = InputBox("请在下方的输入框输入“确认”以继续", "最后的确认", "")
If input <> "确认" Then
    MsgBox "你还没有准备好。", vbSystemModal + vbExclamation, "EXIT"
    WScript.Quit
End If

objShell.Popup "Sateri Project Demo F Side: 终结的终结", 5, "F-SIDE: FIN(FIN)", 64

objShell.Popup "一切都将迎来其尽头", 10, "F-SIDE: FIN", 64
objShell.Popup "一切都将迎来其终结", 10, "F-SIDE: FIN", 64
objShell.Popup "然后", 1, "F-SIDE: FIN", 64
objShell.Popup "一切都将迎来其新生", 10, "F-SIDE: FIN", 64

objShell.Popup "感谢你看到这里。", 2, "G-Side: Good Luck", 64
objShell.Popup "祝君好运！", 5, "G-SIDE: GOOD LUCK", 64

' WScript.Sleep 300000 ' 300,000 ms = 5 mins，算了，太久了
WScript.Sleep 10000 ' 10,000 ms = 10 secs
' TEST ONLY:
' WScript.Sleep 2000 ' 2 secs

' COLLPASE THE COMPUTER
MsgBox "收到了一条新的消息。", vbSystemModal + vbInformation, "??????"
objShell.Popup """世界将要毁灭于此时。""", 1, "GOODBYE", 16
objShell.Popup "5", 1, "", 16
objShell.Popup "4", 1, "", 16
objShell.Popup "3", 1, "", 16
objShell.Popup "2", 1, "", 16
objShell.Popup "1", 1, "", 16

' DESTROY & REBORN
objShell.Popup "算了，没意思，不关机了。", 1, "GOODBYE", 64
MsgBox "再见。", vbSystemModal + vbCritical, "ERROR"

If fso.FileExists(wallpaperPath) Then
    objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaperPath

    Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
    Set colItems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem",,48)
    For Each objItem in colItems
        objItem.Win32Shutdown(0)
    Next
End If

' NOT RESTARTING COMPUTER, JUST CHANGE WALLPAPER
' If fso.FileExists(wallpaperPath) Then
'     objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaperPath

'     Set objShell = CreateObject("WScript.Shell")
'     objShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
' End If

WScript.Quit