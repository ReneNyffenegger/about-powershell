get-content lines.txt -readCount 3 | foreach-object {
  write-host "Processing $($_[0])"
}
