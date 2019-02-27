function add {

  #
  # Parameters can also be specified more explicitely
  # within the param() statement:
  #

    param (
        [int] $param_1,
        [int] $param_2
    )

    $param_1 + $param_2
}

$sum = add 19 23
write-output "sum is $sum"

