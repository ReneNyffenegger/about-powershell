class classWithToString {

   [int   ] $num
   [string] $text

   classWithToString ($n, $t) {
       $this.num    = $n
       $this.text   = $t
   }

   [string] ToString() {
      return "num = $($this.num), text = $($this.text)"
   }
}
