function writeVerbosely {

  [cmdletBinding()]
   param()

   write-host    "Value of `$verbosePreference is $verbosePreference"
   write-verbose "This is a verbose message"
   write-host
}

writeVerbosely
writeVerbosely -verbose
