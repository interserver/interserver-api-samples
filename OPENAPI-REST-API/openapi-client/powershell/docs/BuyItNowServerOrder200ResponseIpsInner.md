# BuyItNowServerOrder200ResponseIpsInner
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
$BuyItNowServerOrder200ResponseIpsInner = Initialize-InterserverApiBuyItNowServerOrder200ResponseIpsInner  -Id 9 `
 -ShortDesc 1 Vlan Ip (/30) `
 -LongDesc 1 IP In personal Vlan `
 -MonthlyPrice 0
```

- Convert the resource to JSON
```powershell
$BuyItNowServerOrder200ResponseIpsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

