$ary =
  [psCustomObject] @{
     num =  42
     txt = 'hello world'
     obj = [psCustomObject] @{
       foo = 'abc'
       bar = 'de'
       baz = 'fghi'
     }
  },
  [psCustomObject] @{
     num =  99
     txt = 'ninety nine'
     obj = [psCustomObject] @{
       foo = 'jk'
       bar = 'lm'
       baz = 'nopqr'
     }
  },
  [psCustomObject] @{
     num =  7
     txt = 'seven nine'
     obj = [psCustomObject] @{
       foo = 'stuv'
       bar = 'w'
       baz = 'xyz'
     }
  }

$ary |
  select-object num, txt, obj
#
#  num txt         obj
#  --- ---         ---
#   42 hello world @{foo=abc; bar=de; baz=fghi}
#   99 ninety nine @{foo=jk; bar=lm; baz=nopqr}
#    7 seven nine  @{foo=stuv; bar=w; baz=xyz}


$ary |
  select-object num, txt -expandProperty obj |
  format-table
#
#  foo  bar baz   num txt
#  ---  --- ---   --- ---
#  abc  de  fghi   42 hello world
#  jk   lm  nopqr  99 ninety nine
#  stuv w   xyz     7 seven nine
