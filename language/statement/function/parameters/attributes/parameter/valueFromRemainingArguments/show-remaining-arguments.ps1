function show-remaining-arguments {

   param (

      [parameter(
         mandatory                   = $false
      )]
      [string] $arg_1,

      [parameter(
         mandatory                   = $false,
         valueFromRemainingArguments = $true
      )]
      [string[]] $args
   )

   write-host "First Argument:       $arg_1"

   $r = 0
   foreach($arg in $args) {
      $r ++;
      write-host "Remaining Argument $r`: $arg"
   }
}
