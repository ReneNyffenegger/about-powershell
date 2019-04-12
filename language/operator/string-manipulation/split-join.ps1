$csv_line = 'foo;bar;baz;etc'

$elems = $csv_line -split ';'

$elems
#
# foo
# bar
# baz
# etc
#


$joined = $elems -join '*'

$joined
#
# foo*bar*baz*etc
#
