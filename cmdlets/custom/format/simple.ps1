class ClsOne {

   [string]   $txt
   [int]      $num

    ClsOne($t, $n) {
        $this.txt = $t
        $this.num = $n
    }
}


$obj_1 = new-object ClsOne 'Hello world', 42

$obj_1 | format-custom
#
#  class ClsOne
#  {
#    txt = Hello world
#    num = 42
#  }


class ClsTwo {

   [string] $abc
   [ClsOne] $obj

   ClsTwo($a, $o) {

      $this.abc = $a
      $this.obj = $o
   }
}


$obj_2 = new-object ClsTwo 'ABC', $obj_1

$obj_2 | format-custom
#
#  class ClsTwo
#  {
#    abc = ABC
#    obj =
#      class ClsOne
#      {
#        txt = Hello world
#        num = 42
#      }
#  }
