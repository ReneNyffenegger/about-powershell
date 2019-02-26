#
#   Create a new key
#
new-item -path HKCU:\Software -name tq84

#
#   Set key's default value
#
set-item -path HKCU:\Software\tq84 -value "This is the default value"

#
#   Add a named value
#
new-itemProperty -path HKCU:\Software\tq84 -name "value one"   -value "The first value"

#
#   Add another named value.
#   Without specyfing the type, the value is added as a string (REG_SZ)
#
new-itemProperty -path HKCU:\Software\tq84 -name "value two"   -value  42

#
#   Add another named value.
#   This time, we explicitely specify its data type (REG_DWORD)
#
new-itemProperty -path HKCU:\Software\tq84 -name "value three" -value  99 -propertyType DWord
