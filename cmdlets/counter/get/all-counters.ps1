foreach ($counterSet in get-counter -listSet * | sort-object counterSetName) {

   "$($counterSet.counterSetName) ($($counterSet.description))"
   ''

   foreach ($counter in $counterSet.counter) {
      "    $counter"
   }
   ''

}
