# HomeServices
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domains** | [**HomeServicesDomains**](HomeServicesDomains.md) |  | [optional] 
**Webhosting** | [**HomeServicesWebhosting**](HomeServicesWebhosting.md) |  | [optional] 
**Vps** | [**HomeServicesVps**](HomeServicesVps.md) |  | [optional] 
**Licenses** | [**HomeServicesLicenses**](HomeServicesLicenses.md) |  | [optional] 
**Servers** | [**HomeServicesServers**](HomeServicesServers.md) |  | [optional] 
**Backups** | [**HomeServicesBackups**](HomeServicesBackups.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServices = Initialize-InterserverApiHomeServices  -Domains null `
 -Webhosting null `
 -Vps null `
 -Licenses null `
 -Servers null `
 -Backups null
```

- Convert the resource to JSON
```powershell
$HomeServices | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

