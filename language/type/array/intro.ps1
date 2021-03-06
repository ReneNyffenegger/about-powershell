$ary = 'foo', 'bar', 'baz'

write-output "First element is:  $($ary[0])"
write-output "Second element is: $($ary[1])"
write-output "Last element is:   $($ary[-1])"
write-output "The array has $($ary.count) elements"
#
# First element is:  foo
# Second element is: bar
# Last element is:   baz
# The array has 3 elements

# Iterating over the array using the foreach-object cmdlet …
$ary | foreach-object { $_.ToUpper() }

# … or the foreach statement: 
foreach ($elem in $ary) {
   $elem.ToUpper() 
}
