$now  = get-date

write-output "Day: $($now.day), month: $($now.month), year: $($now.year)"
#
#  Day: 14, month: 10, year: 2019
#

write-output "Hour: $($now.hour), minute: $($now.minute), second: $($now.second)"
#
#  Hour: 8, minute: 2, second: 55
#

#
#  Use ISO 8601 format to specify a given (fixed) date:
#
$then = get-date '2019-08-28T14:15:16'

#
#  Determine difference between now and then
#
$diff = $now - $then
$diff.GetType().FullName
#
#  System.TimeSpan
#

write-output "Days between then and now: $($diff.days)"
#
#  Days between then and now: 46
#
