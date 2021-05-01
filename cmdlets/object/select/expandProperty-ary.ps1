$ary =
  [psCustomObject] @{
     num   =  42
     txt   = 'hello world'
     elems =  7,9,1
  },
  [psCustomObject] @{
     num   =  99
     txt   = 'ninety nine'
     elems =  3,2
  },
  [psCustomObject] @{
     num   =  7
     txt   = 'seven nine'
     elems =@()
  }

$ary | select-object num, txt -expandProperty elems
#
# 7
# 9
# 1
# 3
# 2
