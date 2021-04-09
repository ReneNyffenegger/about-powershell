format-hex xyz.txt |
out-string -stream |
foreach-object {
   $line = $_
 #
 #  Only apply coloring replacement on lines that don't start
 #  with a white spce;
 #
   if ($line -match '^\S') {
      $line = $line -replace '(\b0[AD]\b)', "$([char]27)[38;5;9m`$1$([char]27)[0m"
   }
   $line
}
