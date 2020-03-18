$psObject_1 = new-object psobject -property @{ word_1 = 'abc' ; word_2 = 'def' ; word_3 = 'ghi' ; word_4 = 'jkl' }
$psObject_2 = new-object psobject -property @{ word_X = 'abc' ; word_2 = 'def' ; word_3 = 'XXX' ; word_4 = 'jkl' }

compare-object $psObject_1 $psObject_2


compare-object $psObject_1 $psObject_2 -includeEqual
#
# InputObject                                       SideIndicator
# -----------                                       -------------
# @{word_2=def; word_4=jkl; word_1=abc; word_3=ghi} ==
