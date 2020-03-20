add-Type -typedef @'

   using System;

   public class XYZ {
      public int    num;
      public String txt;
   }

'@

$props = @{
  num = 4
  txt ='four'
}

$obj_1 = new-object XYZ -property $props

#
#  Note: the memberType we're looking for is
#  property, not noteProperty:
#
$obj_1 | get-member -memberType property
#
#    TypeName: XYZ
# 
# Name MemberType Definition
# ---- ---------- ----------
# num  Property   int num {get;set;}
# txt  Property   string txt {get;set;}
