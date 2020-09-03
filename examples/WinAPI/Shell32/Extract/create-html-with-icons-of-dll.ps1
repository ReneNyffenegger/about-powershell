$dllPath = $args[0]

if ($dllPath -eq $null) {
    write-output "specify a dll";
    return;
}

if (! (test-path $dllPath)) {
    write-output "$dllPath is not a file";
    return;
}

$filenameWithoutSuffix = [IO.Path]::GetFileNameWithoutExtension($dllPath)

. .\Shell32_Extract.ps1
. .\User32_DestroyIcon.ps1


"<html><head>
<title>Icons in $filenameWithoutSuffix.dll</title></head><body>
   <h1>Icons in $filenameWithoutSuffix.dll</h1>
   These icons were extracted with <a href='https://renenyffenegger.ch/notes/Windows/PowerShell/examples/WinAPI/ExtractIconEx'>PowerShell and the WinAPI function <code>ExtractIconEx</code></a><p>
<table><tr>" | out-file "$filenameWithoutSuffix.html";

$null = [Reflection.Assembly]::LoadWithPartialName('System.Drawing');
$null = [Reflection.Assembly]::LoadWithPartialName('System.Drawing.Imaging');

[System.IntPtr] $phiconSmall = 0;
[System.IntPtr] $phiconLarge = 0;

$nofImages = [Shell32_Extract]::ExtractIconEx($dllPath, -1, [ref] $phiconLarge, [ref] $phiconSmall, 0);
$nofImages;

foreach ($iconIndex in 0 .. ($nofImages-1)) {

  $nofIconsExtracted = [Shell32]::ExtractIconEx($dllPath, $iconIndex, [ref] $phiconLarge, [ref] $phiconSmall, 1)
  $iconLarge = [System.Drawing.Icon]::FromHandle($phiconLarge);

  $bmpLarge  = $iconLarge.ToBitmap()
  
  $iconIndex_0  = '{0,3:000}' -f $iconIndex
  $imgName = "$filenameWithoutSuffix-$iconIndex_0.png";
  $bmpLarge.Save("$(get-location)\$imgName");
  
  if ($iconIndex -and (! ($iconIndex % 10))) {
    "</tr><tr>" | out-file "$filenameWithoutSuffix.html" -append;
  }
  
  "<td>$iconIndex_0</td><td><img src='$imgName'/></td>" | out-file "$filenameWithoutSuffix.html" -append;
  
  $null = [User32_DestroyIcon]::DestroyIcon($phiconSmall);
  $null = [User32_DestroyIcon]::DestroyIcon($phiconLarge);

}

"</table></body></html>" | out-file "$filenameWithoutSuffix.html" -append;
