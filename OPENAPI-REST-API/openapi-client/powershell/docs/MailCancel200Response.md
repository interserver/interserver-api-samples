# MailCancel200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Text** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MailCancel200Response = Initialize-InterserverApiMailCancel200Response  -Success null `
 -Text null
```

- Convert the resource to JSON
```powershell
$MailCancel200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

