class C : IComparable {

   [int] hidden $val

   C([int] $v) {
      $this.val = $v
   }

   [bool] Equals([Object] $other) {
    #
    # Equals() is required for the -eq operator.
    #
      return $this.val -eq $other.val
   }

   [int] CompareTo([Object] $other) {
    #
    # CompareTo() is required for the -lt
    # and -gt operator.
    #
      return $this.val - $other.val
   }

   [int] GetHashCode() {
    #
    # An object that overrides the Equals() method
    # should (must?) also override GetHashCode()
    #
      return $this.val
   }
}


$four  = [C]::new(4)
$seven = [C]::new(7)
$VII   = [C]::new(7)

$four   -lt  $seven  # True
$four   -gt  $seven  # False
$four   -eq  $seven  # False
$seven  -eq  $seven  # True
$seven  -eq  $VII    # True
