nLow = 1
nHigh = 1000000000
Randomize
DaRandom = Int((nHigh - nLow + 1) * Rnd + nLow)
Set oShell = CreateObject("WScript.Shell")
strHomeFolder = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
Do While x < 500
	Dim fso, MyFile
	Set fso = CreateObject("Scripting.FileSystemObject")
	Set MyFile = fso.CreateTextFile(strHomeFolder & "\" & DaRandom & ".txt", True)
	MyFile.WriteLine("This is a test." & x & strHomeFolder & DaRandom)
	MyFile.Close
	WScript.Sleep 500
Loop