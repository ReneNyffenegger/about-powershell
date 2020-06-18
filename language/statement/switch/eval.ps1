set-strictMode -version 2

function category ($thing) {

   switch ($thing) {

      { $_ -in 'apple', 'pear', 'orange' } {
         write-host "$_ is a fruit"
      }
      { $_ -in 'foo', 'bar', 'baz' } {
         write-host "$_ is a metasyntactic variable"
      }
      { $_.GetType().Name -eq 'Int32' } {
         write-host "$_ is an int32"
      }
      default {
        write-host "I don't know what $_ is"
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
