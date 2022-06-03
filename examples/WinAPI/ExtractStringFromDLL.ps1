add-type -typeDefinition @"
using System;
using System.Runtime.InteropServices;
using System.Text;

public class tq84_krnl {

  [DllImport("kernel32.dll",
      SetLastError = true,
      CharSet      = CharSet.Ansi
   )]
   private static extern IntPtr              LoadLibraryEx
   (
     [MarshalAs(UnmanagedType.LPStr)]string  lpFileName,
      IntPtr                                 hFile,
      uint                                   dwFlags
   );

  [DllImport("user32.dll"  ,
      SetLastError = true,
      CharSet      = CharSet.Auto
   )]
   private static extern int                 LoadString
   (
      IntPtr                                 hInstance,
      int                                    ID,
      StringBuilder                          lpBuffer,
      int                                    nBufferMax
   );

  [DllImport("kernel32.dll",
      SetLastError = true)]
  [return: MarshalAs(UnmanagedType.Bool)]
   private static extern bool                FreeLibrary
   (
      IntPtr                                 hModule
   );

  public static string ExtractStringFromDLL(string file, int number) {

      IntPtr lib = LoadLibraryEx(file, new IntPtr(0L), 32); // 32 = LOAD_LIBRARY_AS_IMAGE_RESOURCE
      StringBuilder result = new StringBuilder(2048);
      LoadString(lib, number, result, result.Capacity);
      FreeLibrary(lib);

      return result.ToString();
  }
}
"@
