class tq84Enumerator: System.Collections.IEnumerator {

   [int] $val

   tq84Enumerator() {
       $this.Reset()
   }

   [object] get_Current() {
      return $this.val
   }

   [bool] MoveNext() {
      $this.val++

      if ($this.val -gt 13) {
         return $false
      }
      return $true
   }

   [void] Reset() {
       $this.val = 7
   }
}

$e = [tq84Enumerator]::new()
foreach ($num in $e) {
   write-host "num = $num"
}
