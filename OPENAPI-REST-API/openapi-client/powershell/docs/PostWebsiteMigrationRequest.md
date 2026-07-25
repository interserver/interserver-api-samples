# PostWebsiteMigrationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustPortal** | **String** | URL of the customer&#39;s current hosting portal. | [optional] 
**RegEmail** | **String** | Registered email address at the current host. | [optional] 
**Password** | **String** | Password for the current hosting account. | [optional] 
**CtrlPanel** | **String** | URL of the current control panel. | [optional] 
**FtpUsername** | **String** | FTP username at the current host. | [optional] 
**FtpPassword** | **String** | FTP password at the current host. | [optional] 
**SiteBusyMig** | **String** | Information about site traffic during migration. | [optional] 
**SplReqMig** | **String** | Special requirements for the migration. | [optional] 
**DomainReg** | **String** | Whether domain registration assistance is needed. | [optional] 
**DataMig** | **String** | Data migration timing preference. | [optional] 
**DomainRegPortal** | **String** | Domain registrar portal URL. | [optional] 
**DomainRegEmail** | **String** | Email for the domain registrar account. | [optional] 
**DomainRegPassword** | **String** | Password for the domain registrar account. | [optional] 

## Examples

- Prepare the resource
```powershell
$PostWebsiteMigrationRequest = Initialize-InterserverApiPostWebsiteMigrationRequest  -CustPortal null `
 -RegEmail null `
 -Password null `
 -CtrlPanel null `
 -FtpUsername null `
 -FtpPassword null `
 -SiteBusyMig null `
 -SplReqMig null `
 -DomainReg null `
 -DataMig null `
 -DomainRegPortal null `
 -DomainRegEmail null `
 -DomainRegPassword null
```

- Convert the resource to JSON
```powershell
$PostWebsiteMigrationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

