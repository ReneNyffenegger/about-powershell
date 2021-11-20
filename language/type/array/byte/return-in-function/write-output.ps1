#
# https://stackoverflow.com/a/61440506/180275
#
function make-byteArray() {

  [outputType( [byte[]] )]

  [byte[]] $byteArray = new-object byte[] 2

   $byteArray[0] = 0
   $byteArray[1] = 1

   write-output -noEnumerate $byteArray
}

$x = make-byteArray
write-host "type of x: $($x.GetType().FullName)"
