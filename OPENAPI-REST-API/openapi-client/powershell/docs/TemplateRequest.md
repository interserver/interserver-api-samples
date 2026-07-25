# TemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Template** | **String** | OS Template Filename | 
**LocalPassword** | **String** | Password for this account. | 
**Password** | **String** | Password for Root / Administrator Account. | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateRequest = Initialize-InterserverApiTemplateRequest  -Template ubuntu24 `
 -LocalPassword null `
 -Password myUserPassword
```

- Convert the resource to JSON
```powershell
$TemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

