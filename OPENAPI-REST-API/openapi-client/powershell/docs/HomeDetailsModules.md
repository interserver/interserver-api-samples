# HomeDetailsModules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domains** | [**HomeDetailsModulesDomains**](HomeDetailsModulesDomains.md) |  | [optional] 
**Webhosting** | [**HomeDetailsModulesWebhosting**](HomeDetailsModulesWebhosting.md) |  | [optional] 
**Vps** | [**HomeDetailsModulesVps**](HomeDetailsModulesVps.md) |  | [optional] 
**Licenses** | [**HomeDetailsModulesLicenses**](HomeDetailsModulesLicenses.md) |  | [optional] 
**Backups** | [**HomeDetailsModulesBackups**](HomeDetailsModulesBackups.md) |  | [optional] 
**Servers** | [**HomeDetailsModulesServers**](HomeDetailsModulesServers.md) |  | [optional] 
**Quickservers** | [**HomeDetailsModulesQuickservers**](HomeDetailsModulesQuickservers.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeDetailsModules = Initialize-InterserverApiHomeDetailsModules  -Domains null `
 -Webhosting null `
 -Vps null `
 -Licenses null `
 -Backups null `
 -Servers null `
 -Quickservers null
```

- Convert the resource to JSON
```powershell
$HomeDetailsModules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

