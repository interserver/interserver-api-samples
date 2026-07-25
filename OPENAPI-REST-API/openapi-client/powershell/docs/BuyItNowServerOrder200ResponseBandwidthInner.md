# BuyItNowServerOrder200ResponseBandwidthInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**ShortDesc** | **String** |  | [optional] 
**LongDesc** | **String** |  | [optional] 
**MonthlyPrice** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuyItNowServerOrder200ResponseBandwidthInner = Initialize-InterserverApiBuyItNowServerOrder200ResponseBandwidthInner  -Id 10 `
 -ShortDesc 1GBPS Unmetered `
 -LongDesc  `
 -MonthlyPrice 0
```

- Convert the resource to JSON
```powershell
$BuyItNowServerOrder200ResponseBandwidthInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

