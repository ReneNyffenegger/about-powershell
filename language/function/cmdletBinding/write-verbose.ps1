function wv-with {

   [cmdletBinding()]
    param($p)

    write-verbose "param is $p"
}

function wv-without {

    param($p)

    write-verbose "param is $p"
}

wv-with     XYZ
wv-with     XYZ -verbose

wv-without  XYZ
wv-without  XYZ -verbose
