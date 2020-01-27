#
#  Create a dummy directory to test on it:
#
$null = new-item -itemType directory foo

#
#  Get the directory's access control list
#
$acl = get-acl foo

#
# The following would show the access list
#
# $acl.Access

#
#  Create a new rule to grant (allow) FullControl to NT SERVICE\MSSQLSERVER:
#

$ident = new-object System.Security.Principal.NTAccount 'NT SERVICE\MSSQLSERVER'

$rule = new-object System.Security.AccessControl.FileSystemAccessRule      `
    $ident                                                               , `
   ([type]'System.Security.AccessControl.FileSystemRights' )::FullControl, `
   ([type]'System.Security.AccessControl.AccessControlType')::Allow  `

$acl.AddAccessRule($rule)

set-acl foo $acl

# remove-item foo
