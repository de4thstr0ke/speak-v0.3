'Speak v0.2. Modified code by Jonah Brawley :)

returnvalue=MsgBox ("Enable Child-Safe Mode?",36,"Child-Safe Mode?")
if returnvalue=6 Then
	Const ForReading = 1
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	Set objTextFile = objFSO.OpenTextFile _
		("C:\speak-v0.2\bin\withhold.txt", ForReading)

	strText = objTextFile.ReadAll
	objTextFile.Close

	arrComputers = Split(strText, vbCrLf)
End if

do
Dim text, sapi, default, ans, child, final
final = false
default = "Place Text Here..."

text=inputbox("What should I say, your royal highness?","I can talk, dingus!",default)
Set sapi=Createobject("sapi.spvoice")
default = ans

if ans<>"" Then
    final=true
Else
    final=""
End if

if text = "" Then
	Wscript.quit
End if

if InStr(1, strText, text) > 0 and final="" Then
    MsgBox "Language Blocked by Child Safe Mode",48,"Alert"
Else
	sapi.Speak text
End if

if text = "" and ans="" Then
	MsgBox "Empty Parameter!",48,"Error"
End if

loop until text = false

                          