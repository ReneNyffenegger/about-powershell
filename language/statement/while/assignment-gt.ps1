$nums  = 42, 99, 17, 0, 12

$index = -1
function nextNum() {
   $script:index ++
   return $script:nums[$script:index]
}

while ( ($num = nextNum) -gt 22) {
   write-host "num = $num"
}

