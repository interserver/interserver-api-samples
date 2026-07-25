# TemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Template** | **String** | OS Template Filename | 
**Password** | **String** | Password for Root / Administrator Account. | [optional] 
**LocalPassword** | **String** | Password for this account. | 

## Examples

- Prepare the resource
```powershell
$TemplateRequest = Initialize-InterserverApiTemplateRequest  -Template ubuntu24 `
 -Password myUserPassword `
 -LocalPassword null
```

- Convert the resource to JSON
```powershell
$TemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

