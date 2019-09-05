'First number: 42, second number: 99, third number 18.' -match '(\d+)\D+(\d+)\D+(\d+)'
#
#  True

#  Print entire matching string:
$matches[0]
#
#  42, second number: 99, third number 18

#  First, second and third number:
$matches[1]
#
#  42

$matches[2]
#
#  99

$matches[3]
#
#  18
