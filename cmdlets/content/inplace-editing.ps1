$fileName = 'some.text'

( get-content  $fileName )              `
     -replace '#text#', '"Hello World"' `
     -replace '#num#' ,   42            |
  set-content  $fileName
