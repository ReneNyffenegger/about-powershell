function F {
   param (
      [int   ] $num,
      [string] $txt,
      [switch] $yes
   )


   if ($psBoundParameters.ContainsKey('num')) {
      "parameter num was passed and is $num"
   }
   if ($psBoundParameters.ContainsKey('txt')) {
      "parameter txt was passed and is $txt"
   }
   if ($psBoundParameters.ContainsKey('yes')) {
      "parameter yes was passed and is $yes"
   }

}


F -txt 'hello world'
#
#  parameter txt was passed and is hello world


F -num 42 -yes:$false
#
#  parameter num was passed and is 42
#  parameter yes was passed and is False
