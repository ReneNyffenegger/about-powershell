$params = (get-command mkdir).parameters

foreach ($param in $params.keys) {
     $paramMeta = $params[$param]
    '{0,-20} {1,-6} {2}' -f $paramMeta.name, $paramMeta.aliases[0], $paramMeta.parameterType
}
#
# Path                        System.String[]
# Name                        System.String
# Value                       System.Object
# Force                       System.Management.Automation.SwitchParameter
# Credential                  System.Management.Automation.PSCredential
# Verbose              vb     System.Management.Automation.SwitchParameter
# Debug                db     System.Management.Automation.SwitchParameter
# ErrorAction          ea     System.Management.Automation.ActionPreference
# WarningAction        wa     System.Management.Automation.ActionPreference
# InformationAction    infa   System.Management.Automation.ActionPreference
# ErrorVariable        ev     System.String
# WarningVariable      wv     System.String
# InformationVariable  iv     System.String
# OutVariable          ov     System.String
# OutBuffer            ob     System.Int32
# PipelineVariable     pv     System.String
# WhatIf               wi     System.Management.Automation.SwitchParameter
# Confirm              cf     System.Management.Automation.SwitchParameter
# UseTransaction       usetx  System.Management.Automation.SwitchParameter
