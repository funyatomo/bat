Option Explicit

Dim ws
Dim WshShell
Dim arg
Dim appPath
Dim app
Dim cnt

Set ws = WScript
Set arg = ws.Arguments
Set WshShell = CreateObject("WScript.Shell")

appPath = """C:\Program Files\Hidemaru\Hidemaru.exe"""
app = ""

if arg.Count = 0 then
  app = appPath
  WshShell.Run app  , 1, False
else
  for cnt = 0 to arg.Count - 1
    app = appPath & " " & arg(cnt)
    WshShell.Run app  , 1, False
'    ws.echo(app)
  next
end if
