set-strictMode -version latest

write-host
write-host "  The name of script's file is:             $($myInvocation.myCommand.name)"
write-host "  It is located in the directory:           $psScriptRoot"
write-host
write-host "  Thus, the complete path to the script is: $psCommandPath"
write-host
