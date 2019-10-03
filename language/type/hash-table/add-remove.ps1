#
# Create hash table with two elements;
#
$htA = @{
  a_1 = 'val one';
  a_x = 'val X'
}

#
# Add another element
#
$htA['a_2'] = 'val two'

#
# Remove an element
#
$htA.remove('a_x')

write-output $htA
#
# Name                           Value
# ----                           -----
# a_1                            val one
# a_2                            val two

#
# Create another hashtable
#
$htB = @{
  b_1 = 'VAL ONE';
  b_2 = 'VAL TWO'
}

#
# The + and += operators allow to merge
# two hash tables (IF they don't share a key name):
#
$htA += $htB

write-output $htA
#
# b_2                            VAL TWO
# a_1                            val one
# b_1                            VAL ONE
# a_2                            val two
