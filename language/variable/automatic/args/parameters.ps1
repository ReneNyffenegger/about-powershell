function fOne {
   write-host "`$args.length = $($args.length)"
}

function fTwo($p1, $p2) {
   write-host "`$args.length = $($args.length)"
}

fOne
#
#  $args.length = 0

fOne foo
#
#  $args.length = 1

fOne bar baz
#
#  $args.length = 2

fTwo 42 'hello world'
#
#  $args.length = 0
