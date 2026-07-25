# VpsDALicense
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | License tier name. | [optional] 
**SubName** | **String** | License tier sub-name. | [optional] 
**Cost** | **Int32** | Monthly cost in cents. | [optional] 
**ImgDisabled** | **String** | Image path for the disabled state icon. | [optional] 
**ImgActive** | **String** | Image path for the active state icon. | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsDALicense = Initialize-InterserverApiVpsDALicense  -Name null `
 -SubName null `
 -Cost null `
 -ImgDisabled null `
 -ImgActive null
```

- Convert the resource to JSON
```powershell
$VpsDALicense | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

