#
#  Define a function
#
function func_ordinary {
  param($param)
  write-output "psCmdlet = $psCmdlet, param = $param"
}

#
#  Define another function with the only difference
#  that is has the cmdletBinding attribute:
#
function func_cmdlet {
  [cmdletBinding()]
  param($param)
  write-output "psCmdlet = $psCmdlet, param = $param"
}

#
#  Invoking the functions
#

func_ordinary one
#
#  psCmdlet = , param = one

func_cmdlet   two
#
#  psCmdlet = System.Management.Automation.PSScriptCmdlet, param = two

