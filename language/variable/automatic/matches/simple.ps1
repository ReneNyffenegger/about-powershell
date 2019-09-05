'Foo 42 bar 99 baz' -match '\d+' | out-null
write-host "The matched number is $($matches[0])."
#
#  The matched number is 42. 

'Check 999 too' -notmatch '\d+' | out-null
write-host "The matched number is $($matches[0])."
#
#  The matched number is 999.
