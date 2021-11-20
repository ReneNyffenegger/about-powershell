function make-byteArray() {

  [outputType( [byte[]] )]

  [byte[]] $byteArray = new-object byte[] 2

   $byteArray[0] = 0
   $byteArray[1] = 1

   write-host "type of byteArray: $($byteArray.GetType().FullName)"

   return $byteArray
}

$x = make-byteArray
write-host "type of x: $($x.GetType().FullName)"
