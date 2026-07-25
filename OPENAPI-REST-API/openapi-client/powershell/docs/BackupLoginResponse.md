# BackupLoginResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Indicates whether a login session was created. | [optional] 
**Text** | **String** | Login URL or error text returned by the storage provider. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupLoginResponse = Initialize-InterserverApiBackupLoginResponse  -Success null `
 -Text null
```

- Convert the resource to JSON
```powershell
$BackupLoginResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

