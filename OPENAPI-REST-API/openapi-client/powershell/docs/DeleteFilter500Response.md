# DeleteFilter500Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteFilter500Response = Initialize-InterserverApiDeleteFilter500Response  -Success false `
 -Text Unable to delete filter.
```

- Convert the resource to JSON
```powershell
$DeleteFilter500Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

