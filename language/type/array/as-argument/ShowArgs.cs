using System;
public class ShowArgs {

  static void Main(String[] argv) {
     Console.WriteLine($"ShowArgs.exe: argument count is {argv.Length}:");
     foreach (var arg in argv) {
        Console.WriteLine("  " + arg);
     }
  }
}
