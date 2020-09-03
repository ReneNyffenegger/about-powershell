#
#   Inspired by https://gallery.technet.microsoft.com/scriptcenter/Controlling-Mouse-Speed-9ba16d0f
#

set-strictMode -version latest

$newSpeed = 20

$winApi = add-type -name user32 -namespace tq84 -passThru -memberDefinition '
   [DllImport("user32.dll")]
    public static extern bool SystemParametersInfo(
       uint uiAction,
       uint uiParam ,
       uint pvParam ,
       uint fWinIni
    );
'

$SPI_SETMOUSESPEED = 0x0071

"MouseSensitivity before WinAPI call:  $((get-itemProperty 'hkcu:\Control Panel\Mouse').MouseSensitivity)"

$null = $winApi::SystemParametersInfo($SPI_SETMOUSESPEED, 0, 20, 0)

#
#    Calling SystemParametersInfo() does not permanently store the modification
#    of the mouse speed. It needs to be changed in the registry as well
#
"MouseSensitivity after WinAPI call:  $((get-itemProperty 'hkcu:\Control Panel\Mouse').MouseSensitivity)"

set-itemProperty 'hkcu:\Control Panel\Mouse' -name MouseSensitivity -value $newSpeed
