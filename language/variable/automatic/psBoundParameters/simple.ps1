set-strictMode -version 2

function F (
   $param_1  = 'one'  ,
   $param_2  = 'two'  ,
   $param_3  = 'three',
   $param_4  = 'four' ,
   $param_5  = 'five'
) {

  write-host "You called F"
  write-host "  The following arguments were set when F was invoked"
  foreach ($passedArgument in $psBoundParameters.Keys) {
     write-host "    $passedArgument = $($psBoundParameters[$passedArgument])"
  }

  write-host "  Of these arguments, the following were passed positionally"
  foreach ($passedPositionally in $psBoundParameters.BoundPositionally) {
     write-host "    $passedPositionally"
  }

  write-host

}


F 'foo' 'bar' 'baz'
#
#  You called F
#    The following arguments were set when F was invoked
#      param_1 = foo
#      param_2 = bar
#      param_3 = baz
#    Of these arguments, the following were passed positionally
#      param_1
#      param_2
#      param_3
#


F 'one' 'TWO' 'xyz'
#
#  You called F
#    The following arguments were set when F was invoked
#      param_1 = one
#      param_2 = TWO
#      param_3 = xyz
#    Of these arguments, the following were passed positionally
#      param_1
#      param_2
#      param_3

F -param_3 'one' -param_4 'two' -param_1 'three'
#
#  You called F
#    The following arguments were set when F was invoked
#      param_3 = one
#      param_4 = two
#      param_1 = three
#    Of these arguments, the following were passed positionally
