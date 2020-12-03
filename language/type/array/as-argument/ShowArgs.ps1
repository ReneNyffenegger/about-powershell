write-host "ShowArgs.ps1: argument count is $($args.length)"
$args | foreach-object { "  $_" }
