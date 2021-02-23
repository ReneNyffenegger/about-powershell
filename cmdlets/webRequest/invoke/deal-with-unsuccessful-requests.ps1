#
#   Inspired by https://stackoverflow.com/a/19122582/180275
#

set-strictMode -version latest

function get-url {
   param (
      [string] $url
   )


   if ($psVersionTable.psVersion.major -ge 7) {
      $res = invoke-webRequest -skipHttpErrorCheck $url
   }
   else {

      $res = try {
         invoke-webRequest $url
      }
      catch {
         $_.exception.response
      }
   }

   write-host ""
   write-host "  Status for ${url}: $($res.statusCode)"
   write-host "  type of `$res: $($res.GetType().FullName)"
}


write-host "psVersion: $($psVersionTable.psVersion)"

get-url https://google.com/
get-url https://google.com/does-not-exist
