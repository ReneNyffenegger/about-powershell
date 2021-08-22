$objs  = `
     ( new-object psObject -property ( [ordered]@{ val_1 = 'one'   ; val_2 = 'two'   ; val_3 = 'three' } ) ) ,
     ( new-object psObject -property ( [ordered]@{ val_1 = 'foo'   ; val_2 = 'bar'   ; val_3 = 'baz'   } ) ) ,
     ( new-object psObject -property ( [ordered]@{ val_1 = 'abcde' ; val_2 = 'fghij' ; val_3 = $null   } ) ) ;

$objs | foreach-object {
   $_.val_2 = $_.val_2 -replace 'o', 'X'
   $_
}

#
# val_1 val_2 val_3
# ----- ----- -----
# one   twX   three
# foo   bar   baz
# abcde fghij
