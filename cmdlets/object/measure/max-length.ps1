#
# Does not work on PowerShell 5.1 or below
#
[psCustomObject] @{ nm = 99; txt = "ninety-nine" }  ,
[psCustomObject] @{ nm = 42; txt = "hello, world"}  ,
[psCustomObject] @{ nm =  0; txt = "zero"        }  |
measure-object -property { $_.txt.length } -maximum |
select-object maximum
