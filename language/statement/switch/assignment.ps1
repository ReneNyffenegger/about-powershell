set-strictMode -version 3

$num = 2

$txt = switch ($num) {
  1 { 'one'   }
  2 { 'two'   }
  3 { 'three' }
}

write-host "txt = $txt"
