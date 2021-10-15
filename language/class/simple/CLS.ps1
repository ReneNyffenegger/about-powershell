set-strictMode -version latest

class CLS {
 #
 #   The class's member variables:
 #
  [int   ] $num
  [string] $txt

  static [int] $accumulator = 42

 #
 #   The class's constructor:
 #
   CLS($n, $t) {
     $this.num = $n
     $this.txt = $t
   }

 #
 #   A member method that returns a string.
 #
  [string] combineNumAndTxt() {
     return "$($this.num) - $($this.txt)"
  }

 #
 #   A member method that doesn't return
 #   a value. It's «return type» can be
 #   explicitely specified as void:
 #
  [void] printMembers() {
     write-host $this.combineNumAndTxt()
  }

 #
 #   A static method
 #
  static [Int] add($x) {
     [CLS]::accumulator += $x
     return [CLS]::accumulator
  }
}
