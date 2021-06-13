class C {

  [Int32] hidden $val

   C($v) {
      $this.val = $v
   }
}


$obj_1 = [C]::new(4)
$obj_2 = [C]::new(2)
$obj_3 = [C]::new(4)

$obj_4 = $obj_1

$obj_1 -eq $obj_4  # $obj_1 and $obj_4 refer to the same object   -> operator returns $true
$obj_1 -eq $obj_3  # $obj_1 and $obj_3 refer to different objects -> operator returns $false
