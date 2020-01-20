$i = 0
foreach ($task in (get-scheduledTask)) {


# if ($task.actions.length -gt 0)  # Seems always to be 1
  if ($task.actions.execute)
   {

  # "i: $($i)"
    "taskPath   : $($task.taskPath)"
    "taskName   : $($task.taskName)"
    "state      : $($task.state)"
    "triggers   : $($task.triggers)"
    "date       : $($task.date)"
    "description: $($task.description)"

    foreach ($action in $task.actions) {
      "    $($action.execute)"
      "    $($action.arguments)"
      #      $action.id
      #      $action.workingDirectory
      #      $action.psComputerName

    }
   '------------------------------------------'
   }
   $i++

}
