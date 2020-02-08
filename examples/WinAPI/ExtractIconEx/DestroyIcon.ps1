add-type -typeDefinition '

using System;
using System.Runtime.InteropServices;

public class User32 {

  [DllImport(
     "User32.dll",
      EntryPoint        = "DestroyIcon"
  )]
   public static extern int DestroyIcon(IntPtr hIcon);

}
';
