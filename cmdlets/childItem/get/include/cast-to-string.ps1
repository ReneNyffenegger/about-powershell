foreach ($file in get-childItem . -recurse -include *.ps1) {
  [string] $name  = $file
   $name

   $file.GetType().FullName
}


foreach ($file in get-childItem . -recurse          *.ps1) {
  [string] $name  = $file
   $name

   $file.GetType().FullName
}
