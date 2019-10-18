$driverName = 'Oracle In OraDB18Home2'
$dsnName    = 'Ora18'

remove-odbcDsn -name $dsnName -dsnType user -errorAction silentlyContinue

add-odbcDsn `
  -name             $dsnName         `
  -driverName       $driverName      `
  -dsnType           user            `
  -setPropertyValue @(
#    "Password               = secretGarden",  # is it possible to add a passowrd here?
     "StatementCache         = F",
     "NumericSetting         = NLS",
     "Description            = DSN for Ora18",
     "BindAsFLOAT            = F",
     "UserID                 = rene",
     "Application Attributes = T",
     "FailoverDelay          = 10",
     "DisableDPM             = F",
     "ServerName             = Ora18",
     "BatchAutocommitMode    = IfAllSuccessful",
     "FailoverRetryCount     = 10",
     "MaxTokenSize           = 8192",
     "EXECSyntax             = F",
     "DisableRULEHint        = T",
     "UseOCIDescribeAny      = F",
     "ForceWCHAR             = F",
     "LobPrefetchSize        = 8192",
     "Attributes             = W",
#    "EXECSchemaOpt",
     "AggregateSQLType       = FLOAT",
     "Lobs                   = T",
     "QueryTimeout           = T",
     "MetadataIdDefault      = F",
     "MaxLargeData           = 0",
#    "DSN                    = OT",
     "CloseCursor            = F",
     "DisableMTS             = T",
     "Failover               = T",
     "ResultSets             = T",
     "CacheBufferSize        = 20",
     "FetchBufferSize        = 64000",
     "SQLTranslateErrors     = F",
     "BindAsDATE             = F"
)
