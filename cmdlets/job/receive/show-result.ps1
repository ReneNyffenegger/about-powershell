$job = start-job {
 #
 # Calculate the 17th triangular number.
 #
   $result = 0;
   foreach ($i in 1 .. 17) {
      $result += $i
   }

   return $result
 #
 # Pretend it's a real difficult calculation that
 # takes some time …
 #
   start-sleep 6

   return $result
}


foreach ($j in 1 .. 10) {
 #
 # Do something different while the
 # calculation runs in the background
 #

   write-host "j = $j"

   if ($job.state -eq 'Completed') {

      if ($job.hasMoreData) {
        $t17 = receive-job $job
        write-host "Calculated result = $t17"
      }

   }

   start-sleep 2
}
