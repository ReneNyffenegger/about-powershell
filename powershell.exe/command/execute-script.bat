@powershell -command "" ^
                        ^
  $i = 1;               ^
                        ^
  while ($i -le 10) {   ^
    write-output $i;    ^
    $i++;               ^
  }                     ^
                        ^
""
