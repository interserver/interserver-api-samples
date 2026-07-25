# ScrubIpFilterTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**Filters** | [**System.Collections.Hashtable**](ScrubIpFilterTypesFiltersValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScrubIpFilterTypes = Initialize-InterserverApiScrubIpFilterTypes  -Success null `
 -Filters null
```

- Convert the resource to JSON
```powershell
$ScrubIpFilterTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

