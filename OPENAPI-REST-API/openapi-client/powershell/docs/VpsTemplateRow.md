# VpsTemplateRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TemplateId** | **String** |  | [optional] 
**TemplateType** | **String** |  | [optional] 
**TemplateOs** | **String** |  | [optional] 
**TemplateVersion** | **String** |  | [optional] 
**TemplateBits** | **String** |  | [optional] 
**TemplateFile** | **String** |  | [optional] 
**TemplateAvailable** | **String** |  | [optional] 
**TemplateName** | **String** |  | [optional] 
**TemplateDir** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsTemplateRow = Initialize-InterserverApiVpsTemplateRow  -TemplateId null `
 -TemplateType null `
 -TemplateOs null `
 -TemplateVersion null `
 -TemplateBits null `
 -TemplateFile null `
 -TemplateAvailable null `
 -TemplateName null `
 -TemplateDir null
```

- Convert the resource to JSON
```powershell
$VpsTemplateRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

