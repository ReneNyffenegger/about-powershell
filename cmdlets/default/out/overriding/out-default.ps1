function out-default {

   param (
      [parameter (valueFromPipeline=$true)] $val
   )

   begin  { write-host "overwridden out-default is called" }
   process{ write-host "  received: $val"                  }

}
