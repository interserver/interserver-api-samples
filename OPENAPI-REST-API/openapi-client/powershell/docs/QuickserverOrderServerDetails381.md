# QuickserverOrderServerDetails381
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cpu** | **String** | CPU details of the server. | [optional] 
**Ram** | **String** | RAM capacity of the server. | [optional] 
**Hd** | **String** | Hard disk capacity of the server. | [optional] 
**Cores** | **Int32** | Number of CPU cores. | [optional] 
**Cost** | **String** | Cost of the server. | [optional] 

## Examples

- Prepare the resource
```powershell
$QuickserverOrderServerDetails381 = Initialize-InterserverApiQuickserverOrderServerDetails381  -Cpu AMD Ryzen 9 5900X 12-Core Processor `
 -Ram 119GB `
 -Hd 1760GB `
 -Cores 24 `
 -Cost $140.00
```

- Convert the resource to JSON
```powershell
$QuickserverOrderServerDetails381 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

