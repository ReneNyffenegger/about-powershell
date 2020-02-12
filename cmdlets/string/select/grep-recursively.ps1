get-childItem                                        <# Get a list of files                         #> `
  -recurse                                           <# recursively                                 #> `
  ..\..                                              <# start two directories further up            #> `
  -include '*.ps1'                                   <# Only interested in PowerShell scripts       #> |
  select-string                                      <# pipe found files into select-string         #> `
 'foo.*bar' `                                        <# find files that contain foo followed by bar #> |
  format-table                                       <# Pipe to format-table for nice output        #> `
  lineNumber                                         <# We want lineNumber                          #> ,
  @{name='rel. path' ;                               <# relative path                               #> `
   expression={ resolve-path -relative $_.path }}    <#(which is returned by resolve-path …)        #> ,
   line                                              <# and the text of the matchin lien            #>

