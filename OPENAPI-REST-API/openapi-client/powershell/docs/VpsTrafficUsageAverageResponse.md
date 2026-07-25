# VpsTrafficUsageAverageResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarIn** | [**VpsTrafficUsageAverageSectionResponse**](VpsTrafficUsageAverageSectionResponse.md) |  | 
**Out** | [**VpsTrafficUsageAverageSectionResponse**](VpsTrafficUsageAverageSectionResponse.md) |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficUsageAverageResponse = Initialize-InterserverApiVpsTrafficUsageAverageResponse  -VarIn null `
 -Out null
```

- Convert the resource to JSON
```powershell
$VpsTrafficUsageAverageResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

