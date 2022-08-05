function change-values {
   param (
      $p
   )

   $p.txt = 'changed'
   $p.num =  99
}

$hash =                               @{num = 42; txt = 'Hello world'}
$obj  = new-object psObject -property @{num = 42; txt = 'Hello world'}

change-values $hash
change-values $obj

write-host "num = $($hash.num), txt = $($hash.txt)"
write-host "num = $($obj.num ), txt = $($obj.txt )"
