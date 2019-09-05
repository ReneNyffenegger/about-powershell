'First number: 42, second number: 99, third number 18.' -match '(?<first>\d+)\D+(?<second>\d+)\D+(?<third>\d+)'
#
#  True

#  Print entire matching string:
$matches[0]
#
#  42, second number: 99, third number 18

#  First, second and third number:
$matches['first']
#
#  42

$matches['second']
#
#  99

$matches['third']
#
#  18
