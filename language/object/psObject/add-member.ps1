$obj | add-member -memberType noteProperty -name theNumber -value  42
$obj | add-member -memberType noteProperty -name someText  -value 'foo, bar, baz'

write-output "num = $($obj.theNumber), text = $($obj.someText)"
#
# num = 42, text = foo, bar, baz
