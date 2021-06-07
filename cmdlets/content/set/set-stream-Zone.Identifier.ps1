$filepath = "$pwd/simulate-downloaded-file.txt"
$url      = 'https://someUrl.xyz/'

set-content $filepath @'
Prepend that this
file was downloaded
from the internet
'@

set-content $filepath -stream Zone.Identifier @"
[ZoneTransfer]
ZoneId=3
ReferrerUrl=$url
HostUrl=$url$(split-path -leaf $filepath)
"@
