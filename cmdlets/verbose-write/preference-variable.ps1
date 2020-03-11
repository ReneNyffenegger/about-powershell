function writeVerbosely {
   write-host "going to write verbosely"
   write-verbose "This is a verbose message"
   write-host
}

$verbosePreference = 'silentlyContinue'
writeVerbosely

$verbosePreference = 'continue'
writeVerbosely
