#
#  Prevent Error
#    Unable to find type [System.Drawing.Icon]
#  and
#    Unable to find type [System.Drawing.Imaging.ImageFormat].
#
$null = [Reflection.Assembly]::LoadWithPartialName('System.Drawing');
$null = [Reflection.Assembly]::LoadWithPartialName('System.Drawing.Imaging');

$dllPath = "$env:SystemRoot\System32\imageres.dll"

[System.IntPtr] $phiconSmall = 0
[System.IntPtr] $phiconLarge = 0

$nofImages = [Shell32]::ExtractIconEx($dllPath, -1, [ref] $phiconLarge, [ref] $phiconSmall, 0)

foreach ($iconIndex in 0 .. ($nofImages-1)) {

   $nofIconsExtracted = [Shell32]::ExtractIconEx($dllPath, $iconIndex, [ref] $phiconLarge, [ref] $phiconSmall, 1)

   if ($nofIconsExtracted -ne 2) {
      write-error "iconsExtracted = $nofIconsExtracted"
   }

   $iconSmall = [System.Drawing.Icon]::FromHandle($phiconSmall);
   $iconLarge = [System.Drawing.Icon]::FromHandle($phiconLarge);

   $bmpSmall = $iconSmall.ToBitmap()
   $bmpLarge = $iconLarge.ToBitmap()

   $iconIndex_0  = '{0,3:000}' -f $iconIndex

 #
 #  System.Drawing.Image.Save(), without specifying an encoder, stores
 #  the bitmap in png format.
 #
   $bmpLarge.Save("$(get-location)\small-$iconIndex_0.png");
   $bmpLarge.Save("$(get-location)\large-$iconIndex_0.png");

 #
 #  Use System.Drawing.Imaging.ImageFormat to specify a
 #  different format:
 #

   $bmpSmall.Save("$(get-location)\small-$iconIndex_0.bmp", [System.Drawing.Imaging.ImageFormat]::Bmp );
   $bmpLarge.Save("$(get-location)\large-$iconIndex_0.bmp", [System.Drawing.Imaging.ImageFormat]::Bmp );
   
   $bmpSmall.Save("$(get-location)\small-$iconIndex_0.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg);
   $bmpLarge.Save("$(get-location)\large-$iconIndex_0.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg);

}
