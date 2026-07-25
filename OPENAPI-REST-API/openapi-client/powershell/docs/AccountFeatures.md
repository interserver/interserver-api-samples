# AccountFeatures
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisableReset** | **Int32** |  | [optional] 
**DisableReinstall** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountFeatures = Initialize-InterserverApiAccountFeatures  -DisableReset null `
 -DisableReinstall null
```

- Convert the resource to JSON
```powershell
$AccountFeatures | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

