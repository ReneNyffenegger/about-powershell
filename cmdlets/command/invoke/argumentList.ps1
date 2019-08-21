$sb = {
  param($param_1, $param_2)
  write-output "param_1 = $param_1"
  write-output "param_2 = $param_2"
}

invoke-command -scriptBlock $sb -argumentList 42, 'Hello World'
