$fileName = 'test'

set-content $fileName 'foo bar baz'

set-itemProperty $fileName lastWriteTime (get-date '2001-02-03T04:05:06')

get-item $fileName
#
#       Directory: C:\Users\r.nyffenegger\github\temp\PowerShell\cmdLets\itemProperty\set
#   
#   Mode                 LastWriteTime         Length Name
#   ----                 -------------         ------ ----
#   -a---          03.02.2001    04:05             13 test
