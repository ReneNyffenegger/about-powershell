#
#  Pipe an array of strings ...
#
  'foo', 'bar', 'baz'   |
#
#  ... into foreach-object
#
   foreach-object {
#
#   ... which checks if the
#       string is bar ...
#
   if ($_ -eq 'bar') {
#
#       If it is bar, the object is written
#
        write-host $_
   }
   else {
#
#  ... otherwise, it is passed on in
#      the pipeline:
#
       $_
#
   }
}
