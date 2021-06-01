set-strictMode -version latest

write-host
write-host "  The name of script's file is            : $($myInvocation.myCommand.name)"
write-host "  It is located in the directory          : $psScriptRoot"
write-host
write-host "  Thus, the complete path to the script is: $psCommandPath"
write-host
write-host "  The directory can also be evaluated with"
write-host "  `$myInvocation.myCommand.path            : $($myInvocation.myCommand.path)"
write-host
