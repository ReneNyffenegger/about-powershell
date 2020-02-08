foreach ($fileObj in get-childItem '*i*.ps1') {

 #
 # Convert the System.IO.FileInfo object to a string:
 #
   $fileStr = split-path -leaf $fileObj

   write-output $fileStr
}
