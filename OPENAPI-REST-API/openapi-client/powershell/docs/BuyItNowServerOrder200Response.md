# BuyItNowServerOrder200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bandwidth** | [**BuyItNowServerOrder200ResponseBandwidthInner[]**](BuyItNowServerOrder200ResponseBandwidthInner.md) |  | [optional] 
**Ips** | [**BuyItNowServerOrder200ResponseIpsInner[]**](BuyItNowServerOrder200ResponseIpsInner.md) |  | [optional] 
**Os** | [**BuyItNowServerOrder200ResponseOsInner[]**](BuyItNowServerOrder200ResponseOsInner.md) |  | [optional] 
**Cp** | [**BuyItNowServerOrder200ResponseCpInner[]**](BuyItNowServerOrder200ResponseCpInner.md) |  | [optional] 
**Raid** | [**BuyItNowServerOrder200ResponseRaidInner[]**](BuyItNowServerOrder200ResponseRaidInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BuyItNowServerOrder200Response = Initialize-InterserverApiBuyItNowServerOrder200Response  -Bandwidth null `
 -Ips null `
 -Os null `
 -Cp null `
 -Raid null
```

- Convert the resource to JSON
```powershell
$BuyItNowServerOrder200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

