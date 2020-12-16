param (
  [parameter     (    mandatory=$true                           )] # make sure parameter exists
  [validateScript( { [System.IO.Directory]::Exists("$pwd/$_") } )] # make sure path exists
  [string                                                        ]   $path
)

ls $path
