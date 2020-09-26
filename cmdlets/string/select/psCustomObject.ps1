$objs  = `
     ( new-object psObject -property @{ val_1 = 'one'   ; val_2 = 'two'   ; val_3 = 'three' } ) ,
     ( new-object psObject -property @{ val_1 = 'foo'   ; val_2 = 'bar'   ; val_3 = 'baz'   } ) ,
     ( new-object psObject -property @{ val_1 = 'abcde' ; val_2 = 'fghij' ; val_3 = $null   } ) ;

$objs | select-string -inputObject { $_.val_2 } -pattern 'a'
