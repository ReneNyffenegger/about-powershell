$sh = new-object -com "Wscript.Shell"

#
# loop indefinitely, stop with ctrl-c
#
while ($true) {

#
# Sleep for a minute
#
  start-sleep -seconds 6-

#
# Move cursor one to the left and one to
# the right.
#
  $sh.sendkeys("{LEFT}" )
  $sh.sendkeys("{RIGHT}")
}