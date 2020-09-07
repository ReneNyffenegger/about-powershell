get-eventLog -logName system                     |
  where-object  instanceId -eq 225               |
  select-object timeGenerated, message -first 1
