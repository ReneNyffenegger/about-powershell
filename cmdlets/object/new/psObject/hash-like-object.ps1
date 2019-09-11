$psObj = new-object psObject

$psObj.getType().fullName
#
# System.Management.Automation.PSCustomObject

add-member -in $psObj noteProperty  greeting    'Hello world'
add-member -in $psObj noteProperty 'the number'  42

$psObj
#
# greeting    the number
# --------    ----------
# Hello world         42

write-output("I say " + $psObj.greeting)
#
# I say Hello world

write-output("The number is " + $psObj.'the number')
#
# The number is 42
