$values = get-itemProperty HKCU:\Software\tq84 -name num,txt
$values.GetType().FullName
#
# System.Management.Automation.PSCustomObject

write-host "The value of num is $($values.num)"
write-host "The value of txt is $($values.txt)"
