           $weakly___typed = 'ONE', 'TWO', 'THREE'
[string[]] $strongly_typed = 'one', 'two', 'three'

write-output "An weakly   typed array is $($weakly___typed.GetType().FullName) and derives from $($weakly___typed.GetType().BaseType.FullName)"
write-output "An strongly typed array is $($strongly_typed.GetType().FullName) and derives from $($strongly_typed.GetType().BaseType.FullName)"
#
# An weakly   typed array is System.Object[] and derives from System.Array
# An strongly typed array is System.String[] and derives from System.Array
