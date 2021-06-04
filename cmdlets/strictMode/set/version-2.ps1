set-strictMode -version 3

[psCustomObject] $obj = @{ num = 42; txt = 'hello world' }

write-host $obj.num
write-host $obj.unobtainium
