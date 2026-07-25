# CancelBackup200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CancelBackup200Response = Initialize-InterserverApiCancelBackup200Response  -Success null `
 -Text null
```

- Convert the resource to JSON
```powershell
$CancelBackup200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

