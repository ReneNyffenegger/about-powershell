//
//    csc -r:"C:\Program Files (x86)\Reference Assemblies\Microsoft\WindowsPowerShell\3.0\system.management.automation.dll" -target:library Test-ParameterSet.cs
//
//    import-module .\Test-ParameterSet.dll
//
using System.Management.Automation;

[Cmdlet(
   "Test", "ParameterSet",
    DefaultParameterSetName = "paramSetNum"
)]
[OutputType("System.String")]
public class AddStrings : Cmdlet {

   [Parameter(
      Position         =  0,
      Mandatory        =  true,
      ParameterSetName = "paramSetTxt"
   )]
   public string txt { get; set; }

   [Parameter(
      Position         =  0,
      Mandatory        =  true,
      ParameterSetName = "paramSetNum"
   )]
   public ulong num { get; set; }

   protected override void ProcessRecord() {
      WriteObject("num = " + num + ", txt = " + txt);
   }
}
