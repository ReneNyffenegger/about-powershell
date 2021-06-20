function demonstrate-passing-by-reference {
   param (
      [ref][string] $result
   )

   $result.value = 'value assigned in function'
}
