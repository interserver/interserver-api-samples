# MailStatsTypeVolumeTo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientdomainCom** | **Int32** |  | [optional] 
**UsersiteNet** | **Int32** |  | [optional] 
**SalescompanyCom** | **Int32** |  | [optional] 
**ClientanothersiteCom** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MailStatsTypeVolumeTo = Initialize-InterserverApiMailStatsTypeVolumeTo  -ClientdomainCom null `
 -UsersiteNet null `
 -SalescompanyCom null `
 -ClientanothersiteCom null
```

- Convert the resource to JSON
```powershell
$MailStatsTypeVolumeTo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

