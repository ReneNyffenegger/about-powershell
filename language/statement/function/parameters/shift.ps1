function lispy {
   $op, $elems = $args

   invoke-expression ($elems -join $op)
}

lispy '+' 10 3 2
lispy '*' 10 3 2
lispy '-' 10 3 2
lispy '/' 10 3 2
