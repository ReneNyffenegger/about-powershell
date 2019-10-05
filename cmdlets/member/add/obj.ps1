$obj = new-object System.Object

$obj | add-member -memberType noteProperty -name num   -value 21 
$obj | add-member -memberType noteProperty -name text  -value foo
$obj | add-member -memberType scriptMethod -name twice -value { $this.num *= 2 }

$obj.twice()

write-output "`The num is $($obj.num), text is $($obj.text)"
#
#  The num is 42, text is foo

$obj | get-member
#
#     TypeName: System.Object
#  
#  Name        MemberType   Definition
#  ----        ----------   ----------
#  Equals      Method       bool Equals(System.Object obj)
#  GetHashCode Method       int GetHashCode()
#  GetType     Method       type GetType()
#  ToString    Method       string ToString()
#  num         NoteProperty int num=42
#  text        NoteProperty string text=foo
#  twice       ScriptMethod System.Object twice();
