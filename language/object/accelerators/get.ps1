$accels = [psObject].Assembly.GetType('System.Management.Automation.TypeAccelerators')::Get
$names  = $accels.keys | sort-object

foreach ($name in $names) {
  '{0, -30} {1}' -f $name, $accels[$name].FullName
}
