$obj_with     = new-object classWithToString     42, 'hello world'
$obj_without  = new-object classWithoutToString  99, 'ninety-nine'

$obj_with.ToString()
#
#  num = 42, text = hello world

$obj_without.ToString()
#
#  classWithoutToString
