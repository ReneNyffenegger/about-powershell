$num  = new-object psObject @{
  val =     4
  txt = 'four'
}

$num | add-member scriptMethod dbl {
   $this.val * 2
}

$num | add-member scriptMethod mult {
  param([int]$i = 1)
  $this.val * $i
}

$num.dbl()
#
# 8

$num.mult(7)
#
# 28
