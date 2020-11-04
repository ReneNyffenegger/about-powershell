$null = [System.Reflection.Assembly]::LoadFile("$pwd/anAssembly.dll")

$obj_1 = new-object TQ84.aClass 42, 'Hello world'
$obj_2 = new-object TQ84.aClass 99, 'Ninety-nine'

$obj_1.printValues()
$obj_2.printValues()
