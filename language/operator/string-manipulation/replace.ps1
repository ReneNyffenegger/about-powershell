#  Replace in ONE string
#
'foo, bar and baz' -replace 'ba', 'xyz'
#
# foo, xyzr and xyzz

#  Replace in collection of strings
#
'foo', 'bar', 'and', 'baz' -replace 'ba', 'xyz'
#
# foo
# xyzr
# and
# xyzz

#  Replace with regular expressions.
#  Two adjacent equal letters are replaced
#  with the number 2 and the letter:
#
'apple', 'pear', 'hello' -replace '(.)\1', '2$1' -join ', '
#
# a2ple, pear, he2lo

