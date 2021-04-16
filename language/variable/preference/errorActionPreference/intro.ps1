
function open-registryKey($name) {
   $regKey = get-item $name
   write-host "Opened $($regKey.Name)"
}


try {

   open-registryKey hklm:\SOFTWARE
   open-registryKey hklm:\SAM\SAM
   open-registryKey hklm:\SYSTEM

}
catch {

   write-host "Caught error $_"

}
