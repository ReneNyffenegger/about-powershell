$json = @'
{
  "bla": [
    "foo",
    "bar",
    "baz"
  ],
  "txt": "Hello world",
  "num": 42
}
'@

$obj = convertFrom-json $json
$obj.GetType().FullName
#
#  System.Management.Automation.PSCustomObject

$obj.bla
#
#  foo
#  bar
#  baz

$obj.txt
#
#  Hello World

$obj.num
#
#  42
