write-host "obj.num = $($obj.num), obj.txt = $($obj.txt)"
#
#    obj.num = 42, obj.txt = hello world

write-host $obj.combineNumAndTxt()
#
#    42 - hello world

$obj.printMembers()
#
#    42 - hello world
