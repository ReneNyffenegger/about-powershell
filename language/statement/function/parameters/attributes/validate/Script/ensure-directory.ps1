param (
  [parameter     (    mandatory=$true   )] # make sure parameter exists
  [validateScript( { test-path $_     } )] # make sure path exists
  [string                                ]   $path
)

ls $path
