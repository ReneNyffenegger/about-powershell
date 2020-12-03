#
#  Define an array with five elements…
#
$numbers = 'one', 'two', 'three', 'four', 'five'

#
# … and assign it to an array with three elements:
#
$eins, $zwei, $rest = $numbers

#
#  $rest will have remaining elements of $numbers:
#
"eins = $eins"
"zwei = $zwei"
"rest = $rest"
