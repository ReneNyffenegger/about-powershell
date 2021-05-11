$formatEnumerationLimit = 6
$objects | select-object txt, elems
#
#  txt   elems
#  ---   -----
#  three {A, B, C}
#  four  {D, E, F, G}
#  five  {H, I, J, K, L}
#  six   {M, N, O, P, Q, R}
#  seven {S, T, U, V, W, X...}
