set-strictMode -version latest

$CSI="$([char]27)[" # PowerShell 6 has `e for [char]27

"${CSI}2J" # Clear screen


while (1) {
   foreach ($r_ in -255 .. 255) {

      $r = [Math]::Abs($r_)

      $g = 255-$r
      "${CSI}10;15H"          + # Move to column 10, row 15
      "${CSI}38;2;$r;$g;200m" + # Set foreground coor (38;2) to RGB($r, $g, 200)
      "Foo, bar and baz!"       # Write some text

      start-sleep -Milliseconds 10
   }
}
