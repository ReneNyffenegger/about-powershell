$path = 'drive:\dirOne\dirTwo\file.ext'

#  Get directory that contains the path:
#
split-path $path
#
#  drive:\dirOne\dirTwo

#  Get file name only:
#
split-path $path -leaf
#
#  file.ext

#  Get file name without extension:
#
split-path $path -leafBase
#
#  file

#  Check if path is absolute:
#
split-path $path -isAbsolute
#
#  True

#  Get drive of path:
#
split-path $path -qualifier
#
#  drive:

#  Get entire path without drive:
#
split-path $path -noQualifier
#
#  \dirOne\dirTwo\file.ext

#  Get parent's directory parent directory
#
split-path (split-path $path -parent) -parent
#
#  drive:\dirOne
