#
#  Delete a value (value three) under a given key (HKCU\Software\tq84)
#
remove-itemProperty -path HKCU:\Software\tq84 -name "value three"

#
#  Delete an entire key (with all its remaining values)
#
remove-item         -path HKCU:\Software\tq84
