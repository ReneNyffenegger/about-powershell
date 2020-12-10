if ([System.IO.File]::Exists($profile)) {
   write-host "The profile file exists"
}
else {
   write-host "The profile file does not exist"
}
