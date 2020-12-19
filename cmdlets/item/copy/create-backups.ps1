get-childItem -recurse *.ps1 |
  foreach-object {
     copy-item  $_  $( $_.fullName -replace 'ps1$', 'ps1.bak' )
  }
