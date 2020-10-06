$path = 'drive:\dirOne\dirTwo\file.ext'

#  Get directory that contains the path:
#
split-path $path
#
#  drive:\dirOne\dirTwo

#
#  Get parent directory. In case of
#  files, get directory in which file is
#  located
#
split-path $path -parent
#
#  drive:\dirOne\dirTwo

#  Get parent directory's parent directory
#
split-path (split-path $path -parent) -parent
#
#  drive:\dirOne

#  Get file name only:
#
split-path $path -leaf
#
#  file.ext

#  Get file's extension (requires Powershell 6)
#
split-path $path -extension
#
#  .ext

#  Get file name without extension:
#
#    -leafBase requires PowerShell 6.
#     Use [IO.Path]::GetFileNameWithoutExtension($path)
#     in earlier versions.
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

