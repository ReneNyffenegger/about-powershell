[int] $anInteger = 42
      $aVariable = 99

$anInteger.GetType().FullName # System.Int32
$aVariable.GetType().FullName # System.Int32

$anInteger = "17"
$aVariable = "32"

$anInteger.GetType().FullName # System.Int32
$aVariable.GetType().FullName # System.String
