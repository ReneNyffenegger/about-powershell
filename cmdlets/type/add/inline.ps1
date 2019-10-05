add-Type -typedef @'
   using System;

   public class inl {
      public DateTime whenCreated;
      public inl() { whenCreated = DateTime.Now; }
   }
'@

$inl = new-object inl

start-sleep -s 3

write-output "It's $([DateTime]::Now) now, `$inl was created at $($inl.whenCreated)."
