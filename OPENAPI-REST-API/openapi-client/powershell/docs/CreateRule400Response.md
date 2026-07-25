# CreateRule400Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 
**Errors** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateRule400Response = Initialize-InterserverApiCreateRule400Response  -Success false `
 -Text Bad Request `
 -Errors null
```

- Convert the resource to JSON
```powershell
$CreateRule400Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

