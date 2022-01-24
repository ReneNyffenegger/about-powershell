$file = 'out-file-append-test.txt'


'first line'     | out-file -encoding utf8         $file
'second line'    | out-file -encoding utf8 -append $file
'third line'     | out-file -encoding utf8 -append $file
