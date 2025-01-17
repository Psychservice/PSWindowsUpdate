#
# Module manifest for module 'PSWindowsUpdate'
#
# Generated by: Michal Gajda
#
# Generated on: 2011-01-20
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PSWindowsUpdate.dll'

# Version number of this module.
	# Major    - milestone, e.g. new module core
	# Minor    - new solutions, e.g. new cmdlets
	# Build    - new features, e.g. new params
	# Revision - fixed bugs, typos, etc...
ModuleVersion = '2.2.0.3'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '8ed488ad-7c77-4b33-b06e-32214925163b'

# Author of this module
Author = 'Michal Gajda'

# Company or vendor of this module
CompanyName = 'Michal Gajda'

# Copyright statement for this module
Copyright = '(c) 2011-2022 Michal Gajda. All rights reserved.'

# Description of the functionality provided by this module
Description = 'This module contain cmdlets to manage Windows Update Client.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1.0.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.5.1'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'PSWindowsUpdate.Format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = 'PSWindowsUpdate.psm1'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @('Add-WUServiceManager', 'Enable-WURemoting', 'Get-WindowsUpdate', 'Get-WUApiVersion', 'Get-WUHistory', 'Get-WUInstallerStatus', 'Get-WUJob', 'Get-WULastResults', 'Get-WURebootStatus', 'Get-WUServiceManager', 'Get-WUSettings', 'Invoke-WUJob', 'Remove-WindowsUpdate', 'Remove-WUServiceManager', 'Set-WUSettings', 'Update-WUModule', 'Set-PSWUSettings', 'Reset-WUComponents', 'Get-WUOfflineMSU')

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = 'PSWindowsUpdate.dll','PSWindowsUpdate.dll-Help.xml','PSWindowsUpdate.Format.ps1xml','PSWindowsUpdate.psd1','PSWindowsUpdate.psm1'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/mgajda83/PSWindowsUpdate/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/mgajda83/PSWindowsUpdate'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
		ReleaseNotes = '
v2.2.0  - New cmdlet Reset-WUComponents, for reset Windows Updates components to default
		- New cmdlet Get-WUOfflineMSU, for download offline msu package from microsoft Update Catalog

v2.1.1  - Remove-WindowsUpdate added WU Api uninstallation mode
		- Fixed bug with slow run cmdlets
		- Added support for Office 365 users to send emails

v2.1.0  - New cmdlet Set-PSWUSettings, for save PSWUSettings to xml file
		- Param -SendReport can use smtp server credentials
		- Install-WindowsUpdate added -RecurseCycle param, to install next updates after reboot
		- Install-WindowsUpdate added new pre search criteria: DeploymentAction, IsAssigned, IsPresent, BrowseOnly and AutoSelectOnWebSites
		- Change location of PSWindowsUpdate.log file to $Env:TEMP
		- Fixed Get-WULastResults bugs
		- Fixed Remove-WUServiceManager bugs

v2.0.0 - Rewrite whole script module to binary module
		
Cmdlets maping for old module:
v1.6.x                  => v2.0.x
Add-WUOfflineSync       => Add-WUServiceManager
Add-WUServiceManager    => Add-WUServiceManager
-                       => Enable-WURemoting
Get-WUHistory           => Get-WUHistory
Get-WUList              => Get-WindowsUpdate
Get-WUInstall           => Download-WindowsUpdate  (or Get-WindowsUpdate -Download)
Get-WUInstall           => Install-WindowsUpdate   (or Get-WindowsUpdate -Install)
Hide-WUUpdate           => Hide-WindowsUpdate      (or Get-WindowsUpdate -Hide)
Get-WUInstallerStatus   => Get-WUInstallerStatus
Get-WURebootStatus      => Get-WURebootStatus
Get-WUServiceManager    => Get-WUServiceManager
Get-WUUninstall         => Remove-WindowsUpdate
Invoke-WUInstall        => Invoke-WUJob
-                       => Get-WUJob
Remove-WUOfflineSync    => Remove-WUServiceManager
Remove-WUServiceManager => Remove-WUServiceManager
Get-WUAPIVersion        => Get-WUAPIVersion
Get-WULastResults       => Get-WULastResults
Start-WUDetectNow       => -
Start-WUService         => -
Get-WUSettings          => Get-WUSettings
Set-WUSettings          => Set-WUSettings
Update-WUModule         => Update-WUModule'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
