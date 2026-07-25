# LoginErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Field** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginErrorResponse = Initialize-InterserverApiLoginErrorResponse  -Message null `
 -Field null
```

- Convert the resource to JSON
```powershell
$LoginErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

