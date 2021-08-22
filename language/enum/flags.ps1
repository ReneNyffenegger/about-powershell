[flags()] enum fruitAttribute {
   big         = 0x01
   old         = 0x02
   green       = 0x04
   sweet       = 0x08
}

enum fruitSelection {
   apple
   banana
   cherries
}

write-host "value of big: $([fruitAttribute]::big -as [int])"
write-host "value of old: $([fruitAttribute]::old -as [int])"
write-host "value of green: $([fruitAttribute]::green -as [int])"
write-host "value of sweet: $([fruitAttribute]::sweet -as [int])"

function buy {

    param (
       [fruitSelection] $fruit,
       [fruitAttribute] $attributes
    )

    write-host

    if ($fruit -eq [fruitSelection]::apple   ) { write-host "You're buying an apple" }
    if ($fruit -eq [fruitSelection]::banana  ) { write-host "You're buying a banana" }
    if ($fruit -eq [fruitSelection]::cherries) { write-host "You're buying cherries" }

    write-host "The attributes are:" # Alternatively use $attributes in the string

    if ($attributes -band [fruitAttribute]::big  ) { write-host '  big'    }
    if ($attributes -band [fruitAttribute]::old  ) { write-host '  old'    }
    if ($attributes -band [fruitAttribute]::green) { write-host '  green'  }
    if ($attributes -band [fruitAttribute]::sweet) { write-host '  sweet'  }

  #
  # Alternatively, use hasFlag() to check for existence of a flag:
  #
  # if ($attributes.hasFlag([fruitAttribute]::big  )) { write-host '  big'  }

}

buy  banana   ( [fruitAttribute]::old   -bor [fruitAttribute]::green)
buy  apple    ( [fruitAttribute]::green                             )
buy  cherries ( [fruitAttribute]::green -bor [fruitAttribute]::old -bor [fruitAttribute]::big)
buy  apple    ( [fruitAttribute]::sweet                                                      )
