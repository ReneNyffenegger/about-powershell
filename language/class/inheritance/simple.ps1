class B {
   [int] $num

   B([int] $n) {
      $this.num = $n
   }

   [void] method() {
      write-host "$($this.num)"
   }
}

class D : B {

  [string] $txt

   D([int] $num, [string] $txt)  :  base($num)
   {
      $this.txt = $txt
   }

   [void] method()
   {
      write-host "$($this.num): $($this.txt)"
   }

}

$b = [B]::new(99)
$b.method()

$d = [D]::new(42, 'hello world')
$d.method()
