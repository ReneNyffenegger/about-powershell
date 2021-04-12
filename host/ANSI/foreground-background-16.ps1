set-strictMode -version latest

$CSI =  "$([char] 27)" + "["

"normal "      +
$CSI           +
  "9"          + # high intensity foregroud
  "2"          + # green
  "m"          +
"colored text" +
"$CSI"         +
"m"            + # reset
" normal again"

"normal "      +
$CSI           +
  "4"          + # normal intensity background
  "2"          + # green
  "m"          +
"colored text" +
"$CSI"         +
"m"            + # reset
" normal again"
