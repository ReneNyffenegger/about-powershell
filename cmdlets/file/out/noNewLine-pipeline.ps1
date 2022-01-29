'foo', 'bar', 'baz' | out-file -encoding ascii -noNewLine  without-new-line.txt
'foo', 'bar', 'baz' | out-file -encoding ascii                with-new-line.txt

format-hex without-new-line.txt
#
#  66 6F 6F 62 61 72 62 61 7A

format-hex with-new-line.txt
#
#  66 6F 6F 0D 0A 62 61 72 0D 0A 62 61 7A 0D 0A
