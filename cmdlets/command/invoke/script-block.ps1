$sb = {
  write-output 'Hello from a script block'
}
write-output 'Going to invoke command with script block:'
invoke-command $sb
