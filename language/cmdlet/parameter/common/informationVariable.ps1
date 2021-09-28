function do-x {
  [cmdletBinding()] param()

   write-information "do-x was called"
}

function do-y {
  [cmdletBinding()] param()

   write-information "do-y was called"
   do-x
}

do-y -informationAction continue -informationVariable informationGathered

"Type of `$informationGathered: $($informationGathered.GetType().Fullname)"
foreach ($info in $informationGathered) {
   "Info: $info"
}
