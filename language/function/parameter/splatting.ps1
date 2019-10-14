function splat {
    param ($p1, $p2, $p3)

  "`$p1 = $p1, `$p2 = $p2, `$p3 = $p3"
}

$hashTable = @{p3 = 'baz'; p1 = 'foo'; p2 = 'bar'}

#
# Invoke splat with a hash table, without splatting
#
splat $hashTable
#
# $p1 = System.Collections.Hashtable, $p2 = , $p3 =

#
# Invoke splat with a hash table, with splatting. Note the use of @ rather than $:
#
splat @hashTable
#
# $p1 = foo, $p2 = bar, $p3 = baz

$array     = 7, 2, 5

#
# Invoke splat with an array, without splatting
#
splat $array
#
# $p1 = 7 2 5, $p2 = , $p3 =

#
# Invoke splat with an array, with splatting
#
splat @array
#
# $p1 = 7, $p2 = 2, $p3 = 5

#
# Use a splatting AND explicit defined parameter:
#
$ht2 = @{p2 = 'world'; p1 = 'hello'}
splat @ht2 -p3 'P3'
#
# $p1 = hello, $p2 = world, $p3 = P3
