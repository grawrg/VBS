Do While x < 500
	Set objShell = CreateObject("Wscript.Shell")
	objShell.Run "Wscript.exe hidden.vbs"
	x = x + 1
Loop