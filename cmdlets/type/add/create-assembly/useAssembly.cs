using TQ84;

namespace XYZ {

   public class useAssembly {

      static public void run() {

         aClass obj_1 = new TQ84.aClass(42, "Hello world");
         aClass obj_2 = new TQ84.aClass(99, "ninety-nine");

         obj_1.printValues();
         obj_2.printValues();

      }
   }
}
