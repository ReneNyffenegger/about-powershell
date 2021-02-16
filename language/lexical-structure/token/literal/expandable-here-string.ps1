$num   =  42
$value = 'forty-two'

$text = @"
The number is: $num,
and it's value "$value"
"@

write-host $text
