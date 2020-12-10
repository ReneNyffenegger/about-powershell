[psCustomObject] @{ x = 7.1 ; y = 3.3 } ,
[psCustomObject] @{ x = 8.4 ; y = 3.6 } ,
[psCustomObject] @{ x = 6.9 ; y = 3.4 } |
select-object `
   x,
   y,
  @{L = 'ratio'; E = { '{0,5:N2}' -f ($_.x / $_.y) } },
  @{L =  ' sum'; E = { '{0,4:N1}' -f ($_.x + $_.y) } }
#
#    x   y ratio  sum
#    -   - ----- ----
#  7.1 3.3  2.15 10.4
#  8.4 3.6  2.33 12.0
#  6.9 3.4  2.03 10.3
