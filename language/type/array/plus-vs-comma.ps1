$abc = 'a', 'b', 'c'
$abc.length
#
# 3

# ----- Create an array with the comma operator

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

$ary = $abc + 'd', 'e', 'f'
$ary.length
#
# 4

$ary | foreach-object { "$_" }
#
# a
# b
# c
# d
# e
# f
