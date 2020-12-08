if ($psVersionTable.psEdition -eq 'Desktop') {
   $threeTimesFourBytes = [byte[][]] (get-content $psCommandPath -encoding byte -readCount 4 -totalCount 12)
}
else {
   $threeTimesFourBytes = [byte[][]] (get-content $psCommandPath -asByteStream  -readCount 4 -totalCount 12)
}

foreach ($fourBytes in $threeTimesFourBytes) {
   '{0:x2} {1:x2} {2:x2} {3:x2}' -f @( $fourBytes )
}
