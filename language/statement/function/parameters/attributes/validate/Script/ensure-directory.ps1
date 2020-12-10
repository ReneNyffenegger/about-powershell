param (
  [parameter     (    mandatory=$true                    )] # make sure paramter exists
  [validateScript( { [System.IO.Directory]::Exists($_) } )] # make sure path exists
  [string                                                 ]   $path
)

ls $path
