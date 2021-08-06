$psObj_1 = @{ val_1 = 'one'   ; val_2 = 'two'   ; val_3 = 'three' }
$psObj_2 = @{ val_1 = 'foo'   ; val_2 = 'bar'   ; val_3 = 'baz'   }

$psObj_2 | add-member                               `
   -memberType scriptMethod                         `
   -name       ToString {
          "val 1: $($this.val_1), " +
          "val 2: $($this.val_2), " +
          "val 3: $($this.val_3)"
   } `
   -force

$psObj_1.ToString()
#
# System.Collections.Hashtable

$psObj_2.ToString()
#
# val 1: foo, val 2: bar, val 3: baz
