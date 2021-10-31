set-strictMode -version 3

function check-eq {
   param (
      [string] $value,
      [string] $expectedDesktopValue,
      [string] $expectedCoreValue
   )

   if ($psVersionTable.psEdition -eq 'Desktop') {
      if ($value -ne $expectedDesktopValue) {
         write-host "Expected Desktop value was $expectedDesktopValue, but I had $value"
      }

   }
   elseif ($psVersionTable.psEdition -eq 'Core') {

      if ($value -ne $expectedCoreValue) {
         write-host "Expected Core value was $expectedCoreValue, but I had $value"
      }

   }

}

$url = 'https://renenyffenegger.ch/'

$response         = invoke-webRequest $url
$baseResponse     = $response.baseResponse

$responseType     =     $response.GetType().FullName
$baseResponseType = $baseResponse.GetType().FullName

check-eq     $responseType  'Microsoft.PowerShell.Commands.HtmlWebResponseObject'   'Microsoft.PowerShell.Commands.BasicHtmlWebResponseObject'
check-eq $baseResponseType  'System.Net.HttpWebResponse'                            'System.Net.Http.HttpResponseMessage'
