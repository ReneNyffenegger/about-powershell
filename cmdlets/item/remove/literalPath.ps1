$fileName = 'a file with [brackets] in its name.abc'

$null = new-item $fileName
remove-item $fileName

#
#  File still exists
#
get-childItem *.abc

remove-item -literalPath $fileName
