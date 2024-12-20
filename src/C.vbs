' C.vbs: The program to start Sateri Project Demo C Side
' Author: Sateri

' PATH
currentDir = WScript.Arguments(0)

' INITIALIZATION
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' TRIGGER NUMBER CHECK
number = InputBox("给我一个数字", "I need a SPECIAL number")

' CHECK NUMBER

' IS IT A NUMBER?
flag_isNumber = True
If Not IsNumeric(number) Then
	objShell.Popup "你很聪明，选择了一个不是数字的""数字""。", 5, "ERROR", 16
	flag_isNumber = False
End If

' IS IT A SPECIAL NUMBER A?
number = CInt(number)
flag_isSpecial = True

If flag_isNumber Then
	If number = 0 Then
		objShell.Popup "零，万物生于虚无。", 5, "ZERO", 64
	ElseIf number = 1 Then
		objShell.Popup "一，万物之开始。", 5, "ONE", 64
	ElseIf number = 2 Then
		objShell.Popup "二，对立的，平衡的。", 5, "TWO", 64
	ElseIf number = 3 Then
		objShell.Popup "三，一个很巧妙的数字，比二大，比四小。", 3, "THREE", 64
		objShell.Popup "士别三日，一日三秋。", 4, "THREE", 64
	ElseIf number = 4 Then
		objShell.Popup "四，平面映像的双重对称。", 2, "FOUR", 64
		objShell.Popup "四季，四象。", 2, "FOUR", 64
		objShell.Popup "四面楚歌，四海为家。", 4, "FOUR", 64
	ElseIf number = 5 Then
		objShell.Popup "五，阳气之数。", 2, "FIVE", 64
		objShell.Popup "五岳，五行。", 2, "FIVE", 64
		objShell.Popup "五谷丰登，五福临门。", 4, "FIVE", 64
	ElseIf number = 6 Then
		objShell.Popup "六，几何学中的完美数。", 3, "SIX", 64
		objShell.Popup "秦王扫六合，虎视何雄雄。", 4, "SIX", 64
	ElseIf number = 7 Then
		objShell.Popup "七，幸运之数，阴阳平衡。", 4, "SEVEN", 64
		objShell.Popup "比六多一，比八少一，又是五和九的平均数。", 3, "SEVEN", 64
		objShell.Popup "七彩，七星，七色，七律。", 2, "SEVEN", 64
		objShell.Popup "柴米油盐酱醋茶。", 4, "SEVEN", 64
	ElseIf number = 8 Then
		objShell.Popup "八，三维空间上的对称，却显露在了二维平面上。", 6, "EIGHT", 64
		objShell.Popup "八方，八卦，八仙。", 3, "EIGHT", 64
	ElseIf number = 9 Then
		objShell.Popup "九，阴之极数，三三为九。", 5, "NINE", 64
		objShell.Popup "九州，九天，九曲黄河。", 3, "NINE", 64
	ElseIf number = 10 Then
		objShell.Popup "十，很大，又很小。", 10, "TEN", 64
	ElseIf number = 13 Then
		objShell.Popup "十三，不幸之数。", 6, "THIRTEEN", 64
		objShell.Popup "十三太保，金陵十三钗。", 7, "THIRTEEN", 64
	ElseIf number = 14 Then
		objShell.Popup "十四，死与死的重叠。", 7, "FOURTEEN", 64
		objShell.Popup "莎士比亚十四行诗。", 7, "FOURTEEN", 64
	ElseIf number = 153 Then
		objShell.Popup "一百五十三，水仙花数。", 9, "THE NUMBER OF NARCISSUS", 64
	ElseIf number = -1 Then
		objShell.Popup "负一，从有走向无，从无走向有。", 10, "NEGATIVE ONE", 64
	ElseIf number = 1.618 Then
		objShell.Popup "黄金分割比例。", 5, "GOLDEN RATIO", 64
	ElseIf number = 2.718 Then
		objShell.Popup "自然对数的底数。", 5, "EULER'S NUMBER", 64
	ElseIf number = 3.14 Then
		objShell.Popup "圆周率。", 5, "PI", 64
	ElseIf number = 9.8 Then
		objShell.Popup "地球表面的重力加速度。", 5, "GRAVITY", 64
	Else
		flag_isSpecial = False
	End If
End If

' PRIME CHECK
If flag_isNumber And Not flag_isSpecial Then
	isPrime = True
	If number <= 1 Then
		isPrime = False
	ElseIf number Mod 2 = 0 Then
		isPrime = False
	Else
		For i = 3 To Int(Sqr(number)) Step 2
			If number Mod i = 0 Then
				isPrime = False
				Exit For
			End If
		Next
	End If

	If isPrime Then
		objShell.Popup "好，这是一个质数。", 5, "PRIME", 64
	Else
		objShell.Popup "这个数平平无奇。", 5, "NOT PRIME", 64
		objShell.Popup "我不需要这个数。", 2, "NOT PRIME", 64
		WScript.Quit
	End If
End If

objShell.Popup "通过。", 2, "SPECIAL", 64

' REAL CONTENT BEGINS HERE

' GREETINGS
MsgBox "硬币立起的时候。", vbInformation + vbSystemModal, "C-SIDE"
objShell.Popup "Sateri Project Demo C Side: 月落乌啼", 2, "C-SIDE: COIN WHICH STANDS(CWS)", 64

WScript.Quit