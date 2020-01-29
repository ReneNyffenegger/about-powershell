add-type -typeDefinition @"
using System;
using System.Runtime.InteropServices;
 
public static partial class user32 {

   [DllImport("user32.dll", CharSet=CharSet.Auto)]
    public static extern Int32 MessageBox(
            IntPtr hWnd,
            String text,
            String caption,
            int    options
    );
}
"@
 
$chosen = [user32]::MessageBox(0, 'Yes or no?' , 'Choose wisely', 4) # 4: MB_OKCANCEL

if ($chosen -eq 6) { # 6: ID_YES
   write-host "Yeah!"
}
else {               # 7: ID_NO
   write-host "Nay!"
}
