param (
   [parameter(mandatory=$true )] $req,
   [parameter(mandatory=$false)] $opt
)

set-strictMode -version latest

write-host "req = $req"

if ($opt -eq $null) {
 #
 #     The value of the parameter 'opt' is null
 #     This is either …
 #

   if ($psBoundParameters.containsKey('opt')) {
 #
 #     … because the invoker has explicitely
 #     passed $null as value for the paramter …
 #
       write-host "opt was passed as null"
   }
   else {
 #
 #     … or because
 #     the paramter was not set (in which
 #     case it defaults to $null).
 #
      write-host "opt was not passed (and is therefore null)"
   }
}
else {
   write-host "opt = $opt"
}
