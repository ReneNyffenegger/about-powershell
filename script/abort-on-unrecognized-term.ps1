$errorActionPreference = 'stop'
set-strictMode -version latest

$v = 5

foreach ($i in 0 .. 10) {

   if ( $v -gt $i ) {
      write-host 'v > i'
   }
   elsif ($i -lt 7) {
      write-host 'i < 7'
   }

}
