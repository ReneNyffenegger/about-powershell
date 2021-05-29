$array_of_three_objects = 'foo', 'bar', 'baz'

write-output               $array_of_three_objects | foreach-object { "object is $_" }
write-output -noEnumerate  $array_of_three_objects | foreach-object { "object is $_" }
