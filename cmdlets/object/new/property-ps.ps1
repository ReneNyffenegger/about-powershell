$props = @{
   num = 42
   txt ='Hello world'
}

$props.GetType().FullName
#
# System.Collections.Hashtable

$obj = new-object psObject -property $props

$obj | get-member -memberType noteProperty
#
#    TypeName: System.Management.Automation.PSCustomObject
#
# Name MemberType   Definition
# ---- ----------   ----------
# num  NoteProperty int num=42
# txt  NoteProperty string txt=Hello world

#
#  The properties of the object can
#  now be changed
#
$obj.num = 4

$obj | format-table
#
# num txt
# --- ---
#   4 Hello world

