param (
   [parameter(mandatory=$true)] [alias('tx')] [string] $text,
                                              [int   ] $optional,
                                              [switch] $flag
)

write-host "text     = $text"
write-host "optional = $optional"
write-host "flag     = $flag"
write-host ""
