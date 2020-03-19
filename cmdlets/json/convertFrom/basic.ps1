$json = @'
{
  "ary": [
     "one",
     {
        "x": "eggs",
        "y": "why"
     },
     3
  ],
  "txt": "Hello world",
  "num": 42
}
'@

$obj = convertFrom-json $json
$obj.GetType().FullName
#
#  System.Management.Automation.PSCustomObject

#
#    $obj.ary is an array with three elements:
#

$obj.ary.GetType().FullName
#
# System.Object[]

$obj.ary.length
#
# 3

#
#    $obj.arry's first element
#

$obj.ary[0].GetType().FullName
#
# System.String

$obj.ary[0]
#
# one


#
#    $obj.arry's second element
#

$obj.ary[1].GetType().FullName
#
# System.Management.Automation.PSCustomObject

$obj.ary[1]
#
# x    y
# -    -
# eggs why

$obj.ary[1].x
#
# eggs

#
#   etc. etc. etc.
#


$obj.txt
#
#  Hello World

$obj.num
#
#  42
