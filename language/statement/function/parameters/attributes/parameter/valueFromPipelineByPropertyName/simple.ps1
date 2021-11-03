function F {

   param (
      [parameter(valueFromPipelineByPropertyName)] $foo,
      [parameter(valueFromPipelineByPropertyName)] $bar,
      [parameter(valueFromPipelineByPropertyName)] $baz
   )

   process {
      write-host

      if ($foo) { write-host "foo = $foo" }
      if ($bar) { write-host "bar = $bar" }
      if ($baz) { write-host "baz = $baz" }
   }
}


class clsX {
   [int] $bar = 42
}


class clsY {
   [string] $baz = 'hello world'
}


class clsZ {
   [int   ] $bar =  99
   [string] $foo = 'ninety-nine'
}


$objX = new-object clsX
$objY = new-object clsY
$objZ = new-object clsZ


$objX, $objY, $objZ | F
