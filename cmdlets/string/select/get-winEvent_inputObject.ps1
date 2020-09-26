get-winEvent application | select-string -inputObject {$_.message} -pattern 'Failed'
