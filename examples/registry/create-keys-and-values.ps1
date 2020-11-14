

#
#  Create a sub key and specify its default value on one go.
#  Return registry key object into variable:
#
$subKey = new-item -path HKCU:\Software\tq84 -value 'default value sub key' -name subKey 

#
#  The registry object offers a few method that can be used
#  to create keys and values so that new-itemProperty
#  is not required anymore
#
