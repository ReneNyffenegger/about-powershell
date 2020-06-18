$num = 42

switch ($num) {

  { $_ -le   9 } { "$_ has one digit"             ; break }
  { $_ -le  99 } { "$_ has two digits"            ; break }
  { $_ -le 999 } { "$_ has three digits"          ; break }
    default      { "$_ has more than three digits"        }

}
