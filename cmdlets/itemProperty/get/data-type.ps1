$propKey = get-itemProperty 'HKCU:\Control Panel\International'
$propKey.GetType().FullName
#
#   System.Management.Automation.PSCustomObject

$propVal = get-itemProperty 'HKCU:\Control Panel\International' sTimeFormat
$propVal.GetType().FullName
#
#    System.Management.Automation.PSCustomObject

$propVal.sTimeFormat.GetType().FullName
#
#  System.String

$val = get-itemPropertyValue 'HKCU:\Control Panel\International' sTimeFormat
$val.GetType().FullName
#
#  System.String
