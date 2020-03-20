add-Type -typedef @'

using System;
namespace tq84 {

   public class CLS {

      private String txt;

      public void writeTxt() {
         Console.WriteLine("txt is {0}", txt);
      }

      public CLS(String txt_) {
         txt = txt_;
      }
   }
}
'@

$obj_1 = new-object tq84.CLS 'Hello world'
$obj_2 = new-object tq84.CLS 'The number is 42'

$obj_1.writeTxt()
#
#  txt is Hello world

$obj_2.writeTxt()
#
#  txt is The number is 42
