# VpsTrafficResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Target** | **String** |  | 
**Interval** | **Int32** |  | 
**History** | [**VpsTrafficHistoryResponse**](VpsTrafficHistoryResponse.md) |  | 
**Last** | **System.DateTime** |  | 
**Times** | **System.DateTime[]** |  | 
**Totals** | [**VpsTrafficTotalsResposne**](VpsTrafficTotalsResposne.md) |  | 
**Usage** | [**VpsTrafficUsageResponse**](VpsTrafficUsageResponse.md) |  | 
**VarData** | [**VpsTrafficDataSectionResponse[]**](VpsTrafficDataSectionResponse.md) |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficResponse = Initialize-InterserverApiVpsTrafficResponse  -Name null `
 -Target null `
 -Interval null `
 -History null `
 -Last null `
 -Times null `
 -Totals null `
 -Usage null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$VpsTrafficResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

