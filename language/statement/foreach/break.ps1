foreach ($num in 1 .. 10) {

  if ($num -eq 5) { break }

  write-host "$($num) * $($num) = $($num * $num)"

}
