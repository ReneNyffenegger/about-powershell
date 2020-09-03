set-strictMode -version latest

$winApi = add-type  -name user32 -passThru `
   -memberDefinition '

  [DllImport("user32.dll")] public static extern
  IntPtr FindWindowEx(
      IntPtr hwndParent    ,
      IntPtr hwndChildAfter,
      String lpszClass     ,
      String lpszWindow
   );

  [DllImport("User32.dll")] public static extern
  IntPtr SendMessage(
      IntPtr hWnd          ,
      int    uMsg          ,
      int    wParam        ,
      string lParam
   );'

$notepad_1 = start-process -passThru notepad
$notepad_2 = start-process -passThru notepad

#
# Wait for application windows to be created
#
#   https://stackoverflow.com/questions/61637460
#
start-sleep 1

$hwndNotepad_1 = $notepad_1.MainWindowHandle
$hwndNotepad_2 = $notepad_2.MainWindowHandle

$hwndEdit_1    = $winApi::FindWindowEx($hwndNotepad_1, [IntPtr]::Zero, "Edit", $null)
$hwndEdit_2    = $winApi::FindWindowEx($hwndNotepad_2, [IntPtr]::Zero, "Edit", $null)

$null          = $winApi::SendMessage($hwndEdit_1, 0x000C, 0, "This is the first notepad window.")
$null          = $winApi::SendMessage($hwndEdit_2, 0x000C, 0, "This is the second notepad window.")
