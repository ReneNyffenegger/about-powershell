function add {
  $args[0] + $args[1]
}

$sum = add 19 23
write-output "sum is $sum"
#
# sum is 42

$sum = add "foo" "bar"
write-output "sum is $sum"
#
# sum is foobar