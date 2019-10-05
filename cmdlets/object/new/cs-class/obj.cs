namespace TQ84 {

   public class Obj {

      private string name_;

      public Obj(string name) {
         name_ = name;
         System.Console.WriteLine("Obj's constructor was called");
      }

      public static int twice(int a) {
         return 2*a;
      }

      public void saySomeThing(string someThing) {
         System.Console.WriteLine(name_ + " says " + someThing);
      }

   }
}
