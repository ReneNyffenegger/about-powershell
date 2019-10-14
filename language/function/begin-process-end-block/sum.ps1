function sum {
   begin   { $s  = 0  }
   process { $s += $_ }
   end     { $s       }
}

7, 3, 9, 1, 22 | sum
#
#  42
