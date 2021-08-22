$regKey = 'hkcu:\Software\tq84_removeItemTest'

$null = new-item $regKey


set-itemProperty $regKey  num   42
set-itemProperty $regKey  txt  'Hello world'
set-itemProperty $regKey  xyz  'Foo, bar, baz'

read-host 'Registry key and values created'

remove-itemProperty $regKey xyz

remove-item $regKey
