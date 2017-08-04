#requires -version 2
<#
.SYNOPSIS
  Check if TPM is disabled in Lenovo Laptop; if disabled, turn it on.
.DESCRIPTION
  Stores variable of TPM status. If disabled, script runs to enable TPM. Machine must be restarted afterwards for change to take effect.
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         Jon Mann
  Creation Date:  08.04.17
  Purpose/Change: Initial script development
#>



(gwmi -class Lenovo_SetBiosSetting –namespace root\wmi).SetBiosSetting("SecurityChip,Enable")
(gwmi -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings()
