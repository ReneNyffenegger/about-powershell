$item = get-item         `
   inexisting-item       `
  -errorVariable    err  `
  -errorAction      silentlyContinue


if ($err) {
   write-host $err
}
else {
   write-host "item $item found"
}
