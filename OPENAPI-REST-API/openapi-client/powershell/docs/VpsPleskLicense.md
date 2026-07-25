# VpsPleskLicense
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**SubName** | **String** |  | [optional] 
**Cost** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsPleskLicense = Initialize-InterserverApiVpsPleskLicense  -Id null `
 -Name null `
 -SubName null `
 -Cost null
```

- Convert the resource to JSON
```powershell
$VpsPleskLicense | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

