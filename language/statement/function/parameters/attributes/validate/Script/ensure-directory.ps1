param (
  [parameter     (    mandatory=$true                   )]       # make sure parameter exists
  [validateScript( { test-path -pathType container $_ } )]       # make sure path exists
  [string                                                ] $path # finally: the parameter
)

ls $path
