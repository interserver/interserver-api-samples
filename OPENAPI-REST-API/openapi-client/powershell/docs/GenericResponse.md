# GenericResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GenericResponse = Initialize-InterserverApiGenericResponse  -Status null `
 -Text null
```

- Convert the resource to JSON
```powershell
$GenericResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

