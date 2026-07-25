# SuccessTextResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** | Indicates whether or not the command was successful or not. | 
**Text** | **String** | Text associated with the response. | [optional] 
**Action** | **String** | Optional Action relating to the response. | [optional] 

## Examples

- Prepare the resource
```powershell
$SuccessTextResponse = Initialize-InterserverApiSuccessTextResponse  -Success null `
 -Text null `
 -Action null
```

- Convert the resource to JSON
```powershell
$SuccessTextResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

