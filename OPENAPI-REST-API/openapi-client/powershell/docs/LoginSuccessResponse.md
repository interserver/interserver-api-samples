# LoginSuccessResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SessionId** | **String** |  | [optional] 
**AccountId** | **Int32** |  | [optional] 
**AccountLid** | **String** |  | [optional] 
**Ima** | **String** |  | [optional] 
**Gravatar** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginSuccessResponse = Initialize-InterserverApiLoginSuccessResponse  -SessionId null `
 -AccountId null `
 -AccountLid null `
 -Ima null `
 -Gravatar null
```

- Convert the resource to JSON
```powershell
$LoginSuccessResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

