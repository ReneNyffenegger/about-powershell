for ($percent = 0; $percent -le 100; $percent += 5) {
  start-sleep -milliSeconds 500
  write-progress -activity 'Doing nothing' -status "$percent%:" -percentComplete $percent
}
