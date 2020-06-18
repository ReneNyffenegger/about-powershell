$regKey = 'hkcu:\Software\TQ84'

if (! (test-path $regKey )) {
   $null = new-item $regKey
}

set-itemProperty      `
   $regKey            `
  -name    foo        `
  -type    dWord      `
  -value   42

set-itemProperty      `
   $regKey            `
  -name    bar        `
  -type    string     `
  -value  'hello World'
