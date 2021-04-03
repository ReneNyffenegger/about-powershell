$lines = 'foo', 'bar', 'baz'

set-content dos.txt     $lines
set-content unix.txt  (($lines -join "`n") + "`n" ) -noNewLine

format-hex dos.txt
format-hex unix.txt
