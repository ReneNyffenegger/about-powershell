echo ("0: {0} - 2:{2} - 1: {1}" -f 'zero', 'one', 'two')
#
#  0: zero - 2:two - 1: one

#
# {x, n) right aligns the xth element with n places
#
# {x,-n) left aligns the xth element with n places
#
forEach ($item in ('five', 5), ('a hundred', 100), ('two', 2), ('forty-two', 42) ) {
  echo ("{0,-10}: {1,3}" -f $item[0], $item[1])
}
#
#  five      :   5
#  a hundred : 100
#  two       :   2
#  forty-two :  42
