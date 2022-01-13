$fileName = 'a file with [brackets] in its name.abc'

$null = new-item $fileName
remove-item $fileName

#
#  File still exists
#
get-childItem *.abc

#
#  Use -literalPath to remove file with brackets
#
remove-item -literalPath $fileName
