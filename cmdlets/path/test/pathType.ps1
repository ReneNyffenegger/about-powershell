$scriptFile = $myInvocation.myCommand.path

test-path $scriptFile
#
#  True

test-path $scriptFile -pathType leaf
#
#  True

test-path $scriptFile -pathType container
#
#  False

test-path (split-path $scriptFile) -pathType container
#
#  True
