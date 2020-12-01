$abc = 'a', 'b', 'c'
$abc.length
#
# 3

# ----- Create an array with the comma operator
#
#       $abc is turned into one element so that
#       the resulting array consists of 4 elements:

$ary = $abc, 'd', 'e', 'f'
$ary.length
#
# 4

$ary | foreach-object { "$_" }
#
# a b c
# d
# e
# f

# ----- Create an array with the plus operator
#
#       The elements in $abc are exploded/expanded
#       so that the resulting array consists
#       of 6 elements:

$ary = $abc + 'd', 'e', 'f'
$ary.length
#
# 6

$ary | foreach-object { "$_" }
#
# a
# b
# c
# d
# e
# f
