$data = import-CSV data.csv

$quarters = $data | group-object -asHashTable quarter

( $quarters.Q3 | where-object item -eq baz ).val
#
#  16
#

( $quarters.Q2 | where-object val -ge 20 ) | select-object item
#
#  item
#  ----
#  foo
#  baz
#
