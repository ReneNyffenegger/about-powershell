$path = 'drive:\dirOne\dirTwo\file.ext'

split-path $path
#
#  drive:\dirOne\dirTwo

split-path $path -leaf
#
#  file.ext

split-path $path -leafBase
#
#  file

split-path $path -isAbsolute
#
#  True

split-path $path -qualifier
#
#  drive:

split-path $path -noQualifier
#
#  \dirOne\dirTwo\file.ext
