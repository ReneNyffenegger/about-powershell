
function func-2 {

#  write-host "`$myInvocation.GetType().FullName           = $($myinvocation.GetType().FullName)"
   write-host "`$myInvocation.myCommand.GetType().FullName = $($myinvocation.myCommand.GetType().FullName)"
   write-host "`$myInvocation.myCommand.name               = $($myinvocation.myCommand.name)"
#  write-host "`$myInvocation.myCommand.path               = $($myinvocation.myCommand.path)"
   write-host "`$myInvocation.scriptName                   = $($myinvocation.scriptName)"
   write-host "`$myInvocation.psScriptRoot                 = $($myinvocation.psScriptRoot)"
   write-host "`$myInvocation.psCommandPath                = $($myinvocation.psCommandPath)"
   write-host "`$myInvocation.commandOrigin                = $($myinvocation.commandOrigin)"

}

function func-1 {

#  write-host "`$myInvocation.GetType().FullName           = $($myinvocation.GetType().FullName)"
   write-host "`$myInvocation.myCommand.GetType().FullName = $($myinvocation.myCommand.GetType().FullName)"
   write-host "`$myInvocation.myCommand.name               = $($myinvocation.myCommand.name)"
#  write-host "`$myInvocation.myCommand.path               = $($myinvocation.myCommand.path)"
   write-host "`$myInvocation.scriptName                   = $($myinvocation.scriptName)"
   write-host "`$myInvocation.psScriptRoot                 = $($myinvocation.psScriptRoot)"
   write-host "`$myInvocation.psCommandPath                = $($myinvocation.psCommandPath)"
   write-host "`$myInvocation.commandOrigin                = $($myinvocation.commandOrigin)"

   write-host

   func-2

}

#  write-host "`$myInvocation.GetType().FullName           = $($myinvocation.GetType().FullName)"
   write-host "`$myInvocation.myCommand.GetType().FullName = $($myinvocation.myCommand.GetType().FullName)"
   write-host "`$myInvocation.myCommand.name               = $($myinvocation.myCommand.name)"
   write-host "`$myInvocation.myCommand.path               = $($myinvocation.myCommand.path)"
   write-host "`$myInvocation.scriptName                   = $($myinvocation.scriptName)"
   write-host "`$myInvocation.psScriptRoot                 = $($myinvocation.psScriptRoot)"
   write-host "`$myInvocation.psCommandPath                = $($myinvocation.psCommandPath)"
   write-host "`$myInvocation.commandOrigin                = $($myinvocation.commandOrigin)"

write-host

func-1
