$cust_obj = new-object psObject

$cust_obj | add-member number   42
$cust_obj | add-member text    'hello world'
$cust_obj | add-member meta    'foo', 'bar', 'baz'

$member_name = 'text'
$cust_obj.$member_name

'number', 'text', 'meta' | foreach-object {
   '{0,-6}: {1}' -f $_, $cust_obj.$_
}
