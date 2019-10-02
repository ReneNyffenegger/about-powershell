for ($i=1; $i -le 5; $i++) {
  for ($j=1; $j -le 5; $j++) {

    $res = $i * $j
    write-output "$i * $j = $res"

    if ($res -ge 8) { # Exit the loop when i * j >= 8
      write-output ''
      break
    }
  }
}
#
# 1 * 1 = 1
# 1 * 2 = 2
# 1 * 3 = 3
# 1 * 4 = 4
# 1 * 5 = 5
# 2 * 1 = 2
# 2 * 2 = 4
# 2 * 3 = 6
# 2 * 4 = 8
#
# 3 * 1 = 3
# 3 * 2 = 6
# 3 * 3 = 9
#
# 4 * 1 = 4
# 4 * 2 = 8
#
# 5 * 1 = 5
# 5 * 2 = 10
