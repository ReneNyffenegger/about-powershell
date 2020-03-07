$primes = 'two', 'three', 'five', 'seven', 'eleven', 'thirteen'

function check($num) {
   if ($primes -contains $num) {
      echo "$num seems to be a small prime"
   }
   else {
      echo "$num does not seem to be a small prime"
   }
}

check 'one'
check 'two'
check 'three'
check 'four'
