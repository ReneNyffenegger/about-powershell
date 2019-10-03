$ht = @{
  'seven'      =  7;
  'eleven'     = 11;
  'five'       =  5;
  'forty-two'  = 42;
  'zero'       =  0;
  'eighty-two' = 82;
}

$ht.GetEnumerator() | sort-object -property name # -property key seems also possible
#
# Name                           Value
# ----                           -----
# eighty-two                     82
# eleven                         11
# five                           5
# forty-two                      42
# seven                          7
# zero                           0

$ht.GetEnumerator() | sort-object -property value
#
# zero                           0
# five                           5
# seven                          7
# eleven                         11
# forty-two                      42
# eighty-two                     82
