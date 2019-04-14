'Foo 42 bar 99 baz' -match '\d+' | out-null

write-host "The matched number is $($matches[0])."
