# VpsTrafficUsageResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Current** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**Peak** | [**VpsTrafficTotalsSectionResponse**](VpsTrafficTotalsSectionResponse.md) |  | 
**Average** | [**VpsTrafficUsageAverageResponse**](VpsTrafficUsageAverageResponse.md) |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficUsageResponse = Initialize-InterserverApiVpsTrafficUsageResponse  -Current null `
 -Peak null `
 -Average null
```

- Convert the resource to JSON
```powershell
$VpsTrafficUsageResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

