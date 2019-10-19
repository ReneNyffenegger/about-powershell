 get-process | measure-object `
    -property workingSet,PagedMemorySize64,VirtualMemorySize64 `
    -minimum -maximum -average -sum
#
# Count             : 437
# Average           : 32798031.0846682
# Sum               : 14332739584
# Maximum           : 1850437632
# Minimum           : 8192
# StandardDeviation :
# Property          : WorkingSet
#
# Count             : 437
# Average           : 38320076.4485126
# Sum               : 16745873408
# Maximum           : 1188343808
# Minimum           : 57344
# StandardDeviation :
# Property          : PagedMemorySize64
#
# Count             : 437
# Average           : 1146566214653.66
# Sum               : 501049435803648
# Maximum           : 2238949216256
# Minimum           : 8192
# StandardDeviation :
# Property          : VirtualMemorySize64
