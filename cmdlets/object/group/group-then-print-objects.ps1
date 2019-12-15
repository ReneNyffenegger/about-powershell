[psCustomObject] @{ category = 'foo'; val_A = 4; val_B = 'abc' } ,
[psCustomObject] @{ category = 'foo'; val_A = 2; val_B = 'def' } ,
[psCustomObject] @{ category = 'bar'; val_A = 9; val_B = 'ghi' } ,
[psCustomObject] @{ category = 'foo'; val_A = 3; val_B = 'jkl' } ,
[psCustomObject] @{ category = 'baz'; val_A = 6; val_B = 'mno' } ,
[psCustomObject] @{ category = 'bar'; val_A = 7; val_B = 'pqr' } ,
[psCustomObject] @{ category = 'baz'; val_A = 5; val_B = 'stu' } |
 #
 # Pipe all objects into group-object to
 # group theym by their category value:
 #
   group-object category  |
 #
 # There are three different categories, so group-object
 # produces three Microsoft.PowerShell.Commands.GroupInfo
 # objects.
 # These three objects are now piped into foreach-object
 # which first prints the group's name, which is the value
 # of the respective category, and then passes the group's
 # Group value further down the pipeline:
 #
   foreach-object { write-host $_.Name; $_.Group } |
 #
 # A group's Group property contanis all object that
 # belong to a group. These objects are now passed
 # to the following foreach-object which simply
 # prints the objects' properties val_A and val_B:
 #
   foreach-object { write-host "   $($_.val_A): $($_.val_B)" }
