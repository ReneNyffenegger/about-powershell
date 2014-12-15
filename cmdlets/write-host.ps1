write-host "Foo bar baz" -foregroundColor red -backgroundColor yellow

# ------------------------------

$ar = 1..5

write-host $ar
# 1 2 3 4 5

write-host $ar -separator ", "
# 1, 2, 3, 4, 5

# ------------------------------

write-host "foo bar" -noNewline
write-host " baz"
# foo bar baz
