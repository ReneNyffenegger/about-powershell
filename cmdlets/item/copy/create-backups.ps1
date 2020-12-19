get-childItem -recurse *.txt |
  foreach-object {
     copy-item  $_  $( $_.fullName -replace 'txt$', 'txt.bak' )
  }
