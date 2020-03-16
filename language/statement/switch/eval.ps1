set-strictMode -verbose 2

function category ($thing) {

   switch ($thing) {
      { $_ -in 'apple', 'pear', 'orange' } {
         write-host "$thing is a fruit"
      }
      { $_ -in 'foo', 'bar', 'baz' } {
         write-host "$thing is a metasyntactic variable"
      }
      { $_.GetType().Name -eq 'Int32' } {
         write-host "$thing is an int32"
      }
      default {
        write-host "I don't know what $thing is"
      }

   }
}

category  baz
# baz is a metasyntactic variable

category  42
#
# 42 is an int32

category  orange
#
# orange is a fruit

category  ?
#
# I don't know what ? is
