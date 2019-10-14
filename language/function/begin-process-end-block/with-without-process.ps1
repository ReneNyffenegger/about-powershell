#
#  Define a function with all three blocks:
#  begin, process and end
#
function show-beginProcessEnd {
  begin   { "begin:   input = $input" }
  process { "process: input = $input" }
  end     { "end:     input = $input" }
}

#
#  Define another function that does not have
#  the process block
#
function show-beginEnd {
  begin   { "begin:   input = $input" }
  end     { "end:     input = $input" }
}

#
#  Pipe a few objects into the first function
#
1 .. 4 | show-beginProcessEnd
#
#  begin:   input =
#  process: input = 1
#  process: input = 2
#  process: input = 3
#  process: input = 4
#  end:     input =

#
#  Pipe a few objects into the second function
#
1 .. 4 | show-beginEnd
#
#  begin:   input =
#  end:     input = 1 2 3 4
