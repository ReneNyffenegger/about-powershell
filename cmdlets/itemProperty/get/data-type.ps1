$scriptName = $myInvocation.myCommand.name
$propFile = get-itemProperty $scriptName
$propFile.GetType().FullName
#
#   System.IO.FileInfo

$propFileattr = get-itemProperty $scriptName lastAccessTime
$propFileattr.GetType().FullName
#
#   System.Management.Automation.PSCustomObject


$propDir = get-itemProperty .
$propDir.GetType().FullName
#
#   System.IO.DirectoryInfo


$propRegKey = get-itemProperty 'HKCU:\Control Panel\International'
$propRegKey.GetType().FullName
#
#   System.Management.Automation.PSCustomObject

$propVal = get-itemProperty 'HKCU:\Control Panel\International' sTimeFormat
$propVal.GetType().FullName
#
#   System.Management.Automation.PSCustomObject

$propVal.sTimeFormat.GetType().FullName
#
#   System.String

$val = get-itemPropertyValue 'HKCU:\Control Panel\International' sTimeFormat
$val.GetType().FullName
#
#   System.String
