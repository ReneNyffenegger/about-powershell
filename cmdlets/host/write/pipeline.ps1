$pipelineResult = 'one', 'two', 'three' | foreach-object {
   if ($_ -match 'o$') {
      write-host "$_ ends in o"
   }
   elseif ($_ -match '^o') {
      write-output "$_ begins with o"
   }
   else {
      $_
   }
}

''
'pipelineResult:'
$pipelineResult
