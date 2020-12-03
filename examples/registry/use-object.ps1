$key_tq84.SetValue('V',    1 )
$key_tq84.SetValue('W', 'xyz')

$sub_key = $key_tq84.CreateSubKey('subKey')
$sub_key.SetValue('', "sub key's default value")
