$data = @'
foo = 42
bar = 99
baz =  0
'@

$ht = convertFrom-stringData $data

write-output "Value of bar = $($ht['bar'])"
#
#  Value of bar = 99
