$dir = split-path $myInvocation.myCommand.path

invoke-expression -command "$dir/commands.ps1"
