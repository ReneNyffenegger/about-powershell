$sb = {
  param($param_1, $param_2)

  write-output "param_1 = $param_1"
  write-output "param_2 = $param_2"
}

& $sb -param_1 42 -param_2 'hello world'
