# BuyItNowServerOrder200ResponseCpInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**ShortDesc** | **String** |  | [optional] 
**LongDesc** | **String** |  | [optional] 
**OsType** | **String** |  | [optional] 
**MonthlyPrice** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuyItNowServerOrder200ResponseCpInner = Initialize-InterserverApiBuyItNowServerOrder200ResponseCpInner  -Id 1 `
 -ShortDesc None `
 -LongDesc  `
 -OsType  `
 -MonthlyPrice 0
```

- Convert the resource to JSON
```powershell
$BuyItNowServerOrder200ResponseCpInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

