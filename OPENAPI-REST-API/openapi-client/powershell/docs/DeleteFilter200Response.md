# DeleteFilter200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteFilter200Response = Initialize-InterserverApiDeleteFilter200Response  -Success true `
 -Text Filter is deleted.
```

- Convert the resource to JSON
```powershell
$DeleteFilter200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

