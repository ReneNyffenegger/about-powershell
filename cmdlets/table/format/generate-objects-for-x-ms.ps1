param (
   $milliSeconds
)

$ticks_ = (get-date).ticks

$i = 0
while ( (get-date).ticks - $ticks_ -lt $milliSeconds * [System.TimeSpan]::TicksPerMillisecond ) {
   $i++
   [pscustomobject] @{num = $i; txt = 'abcdefghi' }

   start-sleep -milliSecond 50

}

$i++; [pscustomobject] @{num = $i; txt = 'abcdefghijklmnopqrstuvwxyz' }
$i++; [pscustomobject] @{num = $i; txt = 'abcdef'                     }
