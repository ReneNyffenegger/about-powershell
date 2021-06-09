set-strictMode -version latest

import-module ./mdl.psm1

incVar
incVar
incVar
decVar

& (get-module mdl) { write-host "value of variable is $private_variable" }
