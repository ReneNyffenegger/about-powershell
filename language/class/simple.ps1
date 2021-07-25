set-strictMode -version latest

class CLS {
 #
 #   The class's member variables:
 #
  [int   ] $num
  [string] $txt

 #
 #   The class's constructor:
 #
   CLS($n, $t) {
     $this.num = $n
     $this.txt = $t

   }

 #
 #   A member method:
 #
  [string] combineNumAndTxt() {
     return "$($this.num) - $($this.txt)"
  }

 #
 #   A static method
 #
  static [Int] add($x, $y) {
     return $x + $y
  }

}

$obj = [CLS]::new(42, 'hello world')

write-host "obj.num = $($obj.num), obj.txt = $($obj.txt)"
#
#    obj.num = 42, obj.txt = hello world

write-host $obj.combineNumAndTxt()
#
#    42 - hello world

#
# Invoke a static method
#
[CLS]::add(17, 22)
#
#    39

$obj.GetType().FullName
#
#    CLS

$obj.GetType().BaseType.FullName
#
#    System.Object

