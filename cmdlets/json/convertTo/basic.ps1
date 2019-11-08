$obj = [psObject] @{
  txt = 'Hello world'
  num =  42
  bla = 'foo', 'bar', 'baz'
}

convertTo-json $obj
#
# {
#   "bla": [
#     "foo",
#     "bar",
#     "baz"
#   ],
#   "txt": "Hello world",
#   "num": 42
# }
