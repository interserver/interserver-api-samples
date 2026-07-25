# RestoreRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Backup** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreRequest = Initialize-InterserverApiRestoreRequest  -Backup null `
 -Password null
```

- Convert the resource to JSON
```powershell
$RestoreRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

