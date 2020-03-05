foreach($matchedLine in
   get-content text       |
   select-string -allMatches '\b\w{5}\b'
) {
   foreach ($matchedWord in $matchedLine.matches) {
      "$($matchedLine.lineNumber): $matchedWord"
   }
}
