get-content lines.txt -readCount 2 -totalCount 6   | foreach-object {
   write-host "Processing $($_[0])"
}
