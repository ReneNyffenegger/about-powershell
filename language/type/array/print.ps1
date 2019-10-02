$days = 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'
write-output $days
#
# Sun
# Mon
# Tue
# Wed
# Thu
# Fri
# Sat

write-output($days -join ' ')
#
# Sun Mon Tue Wed Thu Fri Sat
