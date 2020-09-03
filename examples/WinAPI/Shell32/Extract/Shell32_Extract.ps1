#
#   https://stackoverflow.com/questions/6872957/how-can-i-use-the-images-within-shell32-dll-in-my-c-sharp-project
#
add-type -typeDefinition '

using System;
using System.Runtime.InteropServices;

public class Shell32_Extract {

  [DllImport(
     "Shell32.dll",
      EntryPoint        = "ExtractIconExW",
      CharSet           =  CharSet.Unicode,
      ExactSpelling     =  true,
      CallingConvention =  CallingConvention.StdCall)
  ]

   public static extern int ExtractIconEx(
      string lpszFile          , // Name of the .exe or .dll that contains the icon
      int    iconIndex         , // zero based index of first icon to extract. If iconIndex == 0 and and phiconSmall == null and phiconSmall = null, the number of icons is returnd
      out    IntPtr phiconLarge,
      out    IntPtr phiconSmall,
      int    nIcons
  );

}
';
