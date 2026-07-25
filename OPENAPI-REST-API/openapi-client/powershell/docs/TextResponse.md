# TextResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **String** | Response text | [optional] 
**Message** | **String** | Response message | [optional] 

## Examples

- Prepare the resource
```powershell
$TextResponse = Initialize-InterserverApiTextResponse  -Text &quot;You were successfull.&quot; `
 -Message null
```

- Convert the resource to JSON
```powershell
$TextResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

