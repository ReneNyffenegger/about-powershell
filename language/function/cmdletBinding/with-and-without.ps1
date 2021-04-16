function f_with {
   [CmdletBinding()]

    param( [Parameter( Mandatory = $true,
                       Position = 0,
                       ValueFromPipeline = $true
            ) ]
           [Int32] $p1
    )

    write-host "with   : $p1"

}


function f_without {
#  [CmdletBinding()]

    param( [Parameter( Mandatory = $true,
                       Position = 0,
                       ValueFromPipeline = $true
            ) ]
           [Int32] $p1
    )

    write-host "without: $p1"
}


1, 2, 3 | f_with
1, 2, 3 | f_without
