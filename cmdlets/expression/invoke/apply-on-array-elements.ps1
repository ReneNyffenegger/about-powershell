$hex_numbers = '0a', 'ff', '10'

$numbers     = $hex_numbers | foreach-object { invoke-expression "0x$_" }

write-host $numbers
