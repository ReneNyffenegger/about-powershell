$value = 'bar'
if ($value -in 'foo', 'bar', 'baz') {
   write-host "$value is in array"
}

$value = 'xxx'
if ($value -notIn 'foo', 'bar', 'baz') {
   write-host "$value is not in array"
}
