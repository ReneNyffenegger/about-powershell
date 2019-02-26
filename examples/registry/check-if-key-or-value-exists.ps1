if (test-path HKCU:\Software\tq84) {

    write-output "The registry key HKCU\Software\tq84 exists"

    $key = get-item HKCU:\Software\tq84

    if ($key.getValue("value one") -ne $null) {
        write-output "value one exists in key HKCU\Software\tq84"
    }
    else {
        write-output "value one does not exist in key HKCU\Software\tq84"
    }

    if ($key.getValue("unobtainium") -ne $null) {
        write-output "unobtainium exists in key HKCU\Software\tq84"
    }
    else {
        write-output "unobtainium does not exist in key HKCU\Software\tq84"
    }

}
else {
    write-output "The registry key HKCU\Software\tq84 does not exist"
}



if (test-path HKCU:\a\path\that\likely\does\not\exist) {
    write-output "The registry key 'HKCU\a\path\that\likely\does\not\exist' exists"
}
else {
    write-output "The registry key 'HKCU\a\path\that\likely\does\not\exist' does not exist"
}