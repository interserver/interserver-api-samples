# HomeServicesBackups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Links** | **String[]** | List of backup links. | [optional] 
**Count** | **Int32** | Number of backups. | [optional] 

## Examples

- Prepare the resource
```powershell
$HomeServicesBackups = Initialize-InterserverApiHomeServicesBackups  -Links null `
 -Count 0
```

- Convert the resource to JSON
```powershell
$HomeServicesBackups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

