$kbdNum =  (get-culture).KeyboardLayoutId
$kbdHex = '{0:x8}' -f $kbdNum
$kbdReg =  get-itemProperty ('hklm:\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\' + $kbdHex )
$kbdTxt =  $kbdReg."Layout Text"

"Keyboard Layout ID $kbdNum ($kbdHex) corresponds to $kbdTxt"
