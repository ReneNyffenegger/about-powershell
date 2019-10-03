$data = @'
foo = 42
bar = 99

# Empty lines and lines
# starting with the comment
# character are ignored.

baz =  0
'@

$ht = convertFrom-stringData $data

write-output "Value of bar = $($ht['bar'])"
#
#  Value of bar = 99

write-output $ht
#
# Name                           Value
# ----                           -----
# baz                            0
# bar                            99
# foo                            42
