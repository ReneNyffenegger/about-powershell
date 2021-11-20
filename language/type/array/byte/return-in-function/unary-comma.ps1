#
# https://stackoverflow.com/a/61440166/180275
#
function make-byteArray() {

  [outputType( [byte[]] )]

  [byte[]] $byteArray = new-object byte[] 2

   $byteArray[0] = 0
   $byteArray[1] = 1

  ,$byteArray
}

$x = make-byteArray
write-host "type of x: $($x.GetType().FullName)"
