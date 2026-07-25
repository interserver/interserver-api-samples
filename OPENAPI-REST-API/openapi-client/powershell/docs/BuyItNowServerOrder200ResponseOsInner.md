# BuyItNowServerOrder200ResponseOsInner
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
$BuyItNowServerOrder200ResponseOsInner = Initialize-InterserverApiBuyItNowServerOrder200ResponseOsInner  -Id 5 `
 -ShortDesc FreeBSD `
 -LongDesc Latest FreeBSD 6.x OS&lt;br&gt;&lt;pre&gt;CP(s): cPanel/DirectAdmin&lt;/pre&gt; `
 -MonthlyPrice 0
```

- Convert the resource to JSON
```powershell
$BuyItNowServerOrder200ResponseOsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

