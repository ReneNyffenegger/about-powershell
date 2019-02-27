function add ([int]$param_1, [int]$param_2) {
  $param_1 + $param_2
}

$sum = add 19 23
write-output "sum is $sum"
#
# sum is 42


#  $sum = add "foo" "bar"
#
#  Because add takes typed parameter, trying to
#  invoke add with strings resultes in the following
#  error:
#     Cannot process argument transformation on parameter 'param_1'.
#     Cannot convert value "foo" to type "System.Int32".
#     Error: "Input string was not in a correct format.
#

