using System;

namespace TQ84 {

   public class aClass {

      private int    num_;
      private string txt_;

      public aClass(int num, string txt) {
         num_ = num;
         txt_ = txt;
      }

      public void printValues() {
         Console.WriteLine(String.Format("num = {0}, txt = {1}", num_, txt_));
      }
   }
}
