 get-process | measure-object            `
    -sum { $_.workingSet        / 1MB }, `
         { $_.PagedMemorySize64 / 1MB } 
#
# Count             : 433
# Average           :
# Sum               : 13530.765625
# Maximum           :
# Minimum           :
# StandardDeviation :
# Property          :  $_.workingSet        / 1MB
# 
# Count             : 433
# Average           :
# Sum               : 16070.26953125
# Maximum           :
# Minimum           :
# StandardDeviation :
# Property          :  $_.PagedMemorySize64 / 1MB
