# BuyItNowServerOrder200ResponseRaidInner
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
$BuyItNowServerOrder200ResponseRaidInner = Initialize-InterserverApiBuyItNowServerOrder200ResponseRaidInner  -Id 0 `
 -ShortDesc No Raid `
 -LongDesc No Raid `
 -MonthlyPrice 0
```

- Convert the resource to JSON
```powershell
$BuyItNowServerOrder200ResponseRaidInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

