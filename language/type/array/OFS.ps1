#
#  Create an array:
#
$ary = 'foo', 'bar', 'baz'

#
#  Initially, the variable OFS has not been assigned a value:
#
$OFS -eq $null
#
#  True

#
#  Printing the array in a string
#
write-output "$ary"
#
#  foo bar baz

#
#  Assign an empty string to OFS and
#  print the array again:
#
$OFS = ''
write-output "$ary"
#
#  foobarbaz

#
#  Assign a string to OFS and
#  print the array again:
#
$OFS = ' -+- '
write-output "$ary"
#
#  foo -+- bar -+- baz
