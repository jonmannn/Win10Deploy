Get-WmiObject -Class Lenovo_BiosSetting -Namespace root\wmi |ft CurrentSetting > c:\BiosSettings.txt

Get-Content C:\BiosSettings.txt | Select-String "SecurityChip"