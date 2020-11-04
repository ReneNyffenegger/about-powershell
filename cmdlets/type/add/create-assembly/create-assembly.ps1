$sourceCode   = get-content -raw aClass.cs
$assemblyPath = "$pwd/anAssembly.dll"

if (test-path  $assemblyPath) {
   remove-item $assemblyPath
}

add-type                          `
   -typeDefinition  $sourceCode   `
   -outputAssembly  $assemblyPath `
   -outputType      library
