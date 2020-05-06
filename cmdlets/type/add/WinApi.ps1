set-strictMode -version latest

$newType = add-type -name user32 -passThru -memberDefinition '
[DllImport("user32.dll", CharSet=CharSet.Auto)]
    public static extern Int32 MessageBox(
            IntPtr hWnd,
            String text,
            String caption,
            int    options
    );'


$MB_OKCANCEL = 4
$ID_YES      = 6
$ID_NO       = 7

$chosen = $newType::MessageBox(0, 'Should I?', 'Important question', $MB_OKCANCEL)

if ($chosen -eq $ID_YES) {
   write-host 'Yeah!'
}
elseif ($chosen -eq $ID_NO) {
   write-host 'Nay!'
}
else {
   write-host 'This is quite an unexpected answer.'
}
