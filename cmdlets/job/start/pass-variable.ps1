$var=42

$scriptBlock = { add-content ~/variable-value "var=$var | using:var=$using:var" }

$var='changed'

start-job $scriptBlock
