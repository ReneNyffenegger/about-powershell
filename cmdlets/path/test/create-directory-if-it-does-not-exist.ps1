if (! (test-path "$home\some-dir") ) {
   $null = new-item -itemType directory -path "$home\some-dir" 
   write-host "directory was created"
}
