forEach ($val in 'foo', 'bar', 'baz') {

  if ($val -eq 'foo') {
    write-host 'Skip processing of foo'
    continue
  }

  write-host "Processing $($val)"

}
