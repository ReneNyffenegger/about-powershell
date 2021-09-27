set-strictMode -version 3

function show-piped-objects {

   param (
      [parameter (valueFromPipeline=$true )] [string] $parameterFromPipeline,
                                             [string] $ordinaryParameter
   )


   process {
      write-host "ordinaryParameter: $ordinaryParameter, parameterFromPipeline = $parameterFromPipeline"
   }

}

'foo', 'bar', 'baz' | show-piped-objects -ordinaryParameter XXX
