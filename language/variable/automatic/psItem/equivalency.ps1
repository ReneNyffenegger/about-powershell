'foo', 'bar', 'baz' | forEach-object { write-host $_      }
'foo', 'bar', 'baz' | forEach-object { write-host $psItem }
