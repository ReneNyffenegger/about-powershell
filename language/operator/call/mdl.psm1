set-strictMode -version latest

[int] $private_variable = 40

function incVar {
   $script:private_variable++
   write-host "var = $script:private_variable"
}

function decVar {
   $script:private_variable
   write-host "var = $script:private_variable"
}
