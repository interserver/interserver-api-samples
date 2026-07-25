# VpsOrderTemplatesHypervWindows
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Windows2019Standard** | **String** |  | [optional] 
**Windows2022** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsOrderTemplatesHypervWindows = Initialize-InterserverApiVpsOrderTemplatesHypervWindows  -Windows2019Standard 2019 Standard `
 -Windows2022 2022
```

- Convert the resource to JSON
```powershell
$VpsOrderTemplatesHypervWindows | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

