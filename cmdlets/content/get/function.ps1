$mkdir_content = get-content function:\mkdir

$mkdir_content.GetType().FullName
#
# System.Management.Automation.ScriptBlock

#
# Print function definition
#
$mkdir_content.ToString()
