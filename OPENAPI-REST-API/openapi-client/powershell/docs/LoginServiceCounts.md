# LoginServiceCounts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Vps** | **Int32** | The number of total VPS orders that have been placed in our billing system. | 
**Websites** | **Int32** | The number of total website orders that have been placed in our billing system. | 
**Servers** | **Int32** | The number of total server orders that have been placed in our billing system. | 

## Examples

- Prepare the resource
```powershell
$LoginServiceCounts = Initialize-InterserverApiLoginServiceCounts  -Vps 205172 `
 -Websites 205172 `
 -Servers 205172
```

- Convert the resource to JSON
```powershell
$LoginServiceCounts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

