"hello world" -contains '*llo*'  # False
"hello world" -like     '*llo*'  # True

$items = 'foo', 'bar', 'baz'
$items -contains 'bar'           # True
$items -contains 'xyz'           # False
