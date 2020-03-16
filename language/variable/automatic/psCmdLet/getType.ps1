function typeof-psCmdlet {
  [cmdletBinding()] param()

   echo "type of `$psCmdlet is $($psCmdlet.GetType().FullName)"
}

typeof-psCmdlet
#
# type of $psCmdlet is System.Management.Automation.PSScriptCmdlet