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

}

$obj = [CLS]::new(42, 'hello world')

write-host "obj.num = $($obj.num), obj.txt = $($obj.txt)"
#
#    obj.num = 42, obj.txt = hello world

write-host $obj.combineNumAndTxt()
#
#    42 - hello world

$obj.GetType().FullName
#
#    CLS

$obj.GetType().BaseType.FullName
#
#    System.Object
