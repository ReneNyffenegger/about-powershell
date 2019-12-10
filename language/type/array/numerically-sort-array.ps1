$ary          =    '9', '10', '1', '888'
$ary | sort-object
#
# 1
# 10
# 888
# 9

$ary | sort-object { [int] $_ }
#
# 1
# 9
# 10
# 888
