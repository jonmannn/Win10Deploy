(gwmi -class Lenovo_SetBiosSetting –namespace root\wmi).SetBiosSetting("SecurityChip,Enable")
(gwmi -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings()