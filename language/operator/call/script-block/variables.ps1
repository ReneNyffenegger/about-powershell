$num = 99

$scriptBlock = {

  write-host "num = $num"
  write-host "txt = $txt"

  $txt = 'changed'
  $num =  0

}

$num = 42
$txt ='Hello world'

& $scriptBlock

echo "txt (after running scriptBlock): $txt"
echo "num (after running scriptBlock): $num"

#
# Script output is:
#
#  num = 42
#  txt = Hello world
#  txt (after running scriptBlock): Hello world
#  num (after running scriptBlock): 42
