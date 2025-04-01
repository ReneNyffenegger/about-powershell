$var = 'assigned in script'

function func() {

 #
 #   Function did not not create its own $var yet, so
 #  $var refers to $script:var
 #
   write-host "  in func: var = $var"

   $var        = 'assigned in function'
   $global:var = 'assigned in function with :global'

 #
 #   Now, that the function has created its own $var,
 #  $var refers to the function's $var, not to $script:var
 #
   write-host "  in func: var = $var"

 #
 #   Use modifiers to explicitely state what variable
 #   is referred to:
 #
   write-host "  in func: script:var = $script:var"
   write-host "  in func: global:var = $global:var"

}

write-host "var = $var"
write-host "calling func"
func
write-host ""
write-host "var = $var"
write-host "script:var = $script:var"
write-host "global:var = $global:var"

#
# script prints:
#
#    var = assigned in script
#    calling func.
#      in func: var = assigned in script
#      in func: var = assigned in function
#      in func: script:var = assigned in script
#      in func: global:var = assigned in function with :global
#
#    var = assigned in script
#    script:var = assigned in script
#    global:var = assigned in function with :global
