#
#  Replace in ONE string
#
'foo, bar and baz' -replace 'ba', 'xyz'
#
# foo, xyzr and xyzz
#

#
#  Replace in collection of strings
#
'foo', 'bar', 'and', 'baz' -replace 'ba', 'xyz'
#
# foo
# xyzr
# and
# xyzz
#
