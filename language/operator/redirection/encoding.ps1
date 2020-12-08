'abc' > abc.txt

if ($psVersionTable.psEdition -eq 'Desktop') {
   $bytes = get-content abc.txt -encoding byte
}
else {
   $bytes = get-content abc.txt -asByteStream
}

foreach ($byte in $bytes) {
  ' {0:x2} {1}' -f $byte, [char]$byte
}
