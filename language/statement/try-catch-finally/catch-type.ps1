class ExOne : System.Exception {}
class ExTwo                    {}

function throwException($num) {

   if ($num -eq 1) {
      throw [ExOne]::new()

   }
   if ($num -eq 2) {
      throw [ExTwo]::new()
   }
}

function tryToCatch($num) {
   try {
      throwException $num
      write-host 'no exception'
   }
   catch [ExOne] {
      write-host "Caught: ExOne"
   }
   catch [ExTwo] {
      write-host "Caught: ExTwo"
   }
   catch {
      write-host "Caught neither ExOne nor ExTwo: `$_ = $_"
   }

}

tryToCatch 1
#
#  Caught: ExOne

tryToCatch 2
#
#  Caught neither ExOne nor ExTwo: $_ = ExTwo

tryToCatch 3
#
#  no exception
