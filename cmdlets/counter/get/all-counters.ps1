foreach ($counterSet in get-counter -listSet *) {

   write-host "$($counterSet.counterSetName) ($($counterSet.description))"

   foreach ($counter in $counterSet.counter) {
      "  $counter"
   }

}
