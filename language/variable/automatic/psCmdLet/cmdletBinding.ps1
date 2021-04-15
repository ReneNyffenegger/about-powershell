#
#  Defining a few functions
#
function func_1 {
   param($param)
   write-output "psCmdlet = $psCmdlet, param = $param"
}

#
#  Define another function with the only difference
#  that is has the cmdletBinding attribute:
#
function func_2 {
  [cmdletBinding()]
   param($param)
   write-output "psCmdlet = $psCmdlet, param = $param"
}

#
#  This function does not have a a [cmdletBinding()] instruction.
#  However, the param() statement encloses a [parameter(...)] thingy
#  which also causes $psCmdlet to be defined:
#
function func_3 {
   param([parameter()] [string] $param)
   write-output "psCmdlet = $psCmdlet, param = $param"
}


#
#  Invoking the functions
#

func_1 one
#
#  psCmdlet = , param = one

func_2   two
#
#  psCmdlet = System.Management.Automation.PSScriptCmdlet, param = two

func_3 three
#
#  psCmdlet = System.Management.Automation.PSScriptCmdlet, param = three
