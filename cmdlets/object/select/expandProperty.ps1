#
#  An array with three elements is created.
#
#  Each element is a psCustomObject with the two note properties
#  key_1 and key_2.
#
#  Note: key_1 of the last element in the array contains an array.
#
$ary =
  [psCustomObject] @{ key_1 = 'val'                       ; key_2 = 'foo' },
  [psCustomObject] @{ key_1 = 'another val'               ; key_2 = 'bar' },
  [psCustomObject] @{ key_1 = 'an', 'array', 'of', 'words'; key_2 = 'baz' }

#
#  The array is sent to the select-object cmdLet, once with the -property
#  and once with the -expandedProperties argument. The return values
#  are captured in two variables:
#
$properties         = $ary | select-object -property       key_1
$expandedProperties = $ary | select-object -expandProperty key_1

#
#  With -property, select-object just filters the properties from
#  the object it receives from the pipeline. Thus, we still have
#  three elements:
#
$properties.count
#
# 3

#
#  However, when using -expandedProperties, select-object will
#  turn each element of the value of the expanded property into
#  its own object. Because the last element of $ary contains 4 elements,
#  we now have 6 (=2+4) objects (strings) in the $expandedProperties
#  Variable
$expandedProperties.count
#
# 6

#
#  The second (last) element in $properties is still an array:
#
$properties[2]
#
#  key_1
#  -----
#  {an, array, of, words}

#
#  The second element $expandedProperties is the first element
#  of the array that was assigned to key_1:
#
$expandedProperties[2]
#
#  an
