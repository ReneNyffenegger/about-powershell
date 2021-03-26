set-strictMode -version latest

function func($p_1, $p_2, $p_3) {
   write-host "p_1 = $p_1"
   write-host "p_2 = $p_2"
   write-host "p_3 = $p_3"
}

invoke-expression "func ``
  -p_2   2   ``
  -p_1   one ``
  -p_3   III
"
