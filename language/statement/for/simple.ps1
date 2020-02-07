for (
  [int] $num = 4      ; # Statement(s) that are executed before the loop is entered
  $num -lt 9          ; # Loop is exited when this condition is true at the end of the loop
  $num  ++              # Statement to be executd if condition is not reached at end of loop
) {

  write-host("num = $num");

}
#
# num = 4
# num = 5
# num = 6
# num = 7
# num = 8
