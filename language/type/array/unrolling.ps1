$ary = [psCustomObject] @{ propA = 'one'  ; propB = 'foo' },
       [psCustomObject] @{ propA = 'two'  ; propB = 'bar' },
       [psCustomObject] @{ propA = 'three'; propB = 'baz' }

echo ($ary.propA -join ' - ')
#
#  one - two - three

echo ($ary.propB -join ' - ')
#
#  foo - bar - baz
