$name_value_pairs = 'text', 'hello World', 'number', 42, 'fruit', 'apple'

while ($name_value_pairs) {
   $name, $value, $name_value_pairs = $name_value_pairs
   write-host('{0,-7}: {1}' -f $name, $value)
}
