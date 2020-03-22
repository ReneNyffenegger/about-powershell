#
#  Create a hash table
#
$ht = @{}

#
#  Add a couple of key/value pairs:
#
$ht['one'] = 1
$ht['two'] = 2

#
#  Use the 'Keys' property to print the
#  hash table's
#
$ht.Keys
#
#  one
#  two

#
#  Add another key/value pair.
#
$ht['Keys'] = 42

#
#  Adding this key overwrode the
# 'Keys' property:
#
$ht.Keys
#
#  42

#
#  Use psBase.Keys to get the «real»
#  Keys property:
#
$ht.psBase.Keys
#
#  one
#  Keys
#  two


#
#  Can 'psBase' be overridden, too?
#
$ht['psBase'] = $null

#
#  No, it does not:
#
$ht.psBase.Keys
#
#  psBase
#  one
#  Keys
#  two
