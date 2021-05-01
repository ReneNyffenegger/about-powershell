$formatEnumerationLimit = 4 # Default
$objects | select-object txt, elems
#
#  txt   elems
#  ---   -----
#  three {A, B, C}
#  four  {D, E, F, G}
#  five  {H, I, J, K...}
#  six   {M, N, O, P...}
#  seven {S, T, U, V...}
