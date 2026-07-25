# GetScrubIpDetails200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**GetScrubIpDetails200ResponseServiceInfo**](GetScrubIpDetails200ResponseServiceInfo.md) |  | [optional] 
**ClientLinks** | [**GetScrubIpDetails200ResponseClientLinksInner[]**](GetScrubIpDetails200ResponseClientLinksInner.md) |  | [optional] 
**BillingDetails** | [**GetScrubIpDetails200ResponseBillingDetails**](GetScrubIpDetails200ResponseBillingDetails.md) |  | [optional] 
**CustCurrency** | **String** |  | [optional] 
**CustCurrencySymbol** | **String** |  | [optional] 
**Package** | **String** |  | [optional] 
**ExtraInfoTables** | [**GetScrubIpDetails200ResponseExtraInfoTables**](GetScrubIpDetails200ResponseExtraInfoTables.md) |  | [optional] 
**FilterFirewall** | [**GetScrubIpDetails200ResponseFilterFirewall**](GetScrubIpDetails200ResponseFilterFirewall.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetScrubIpDetails200Response = Initialize-InterserverApiGetScrubIpDetails200Response  -ServiceInfo null `
 -ClientLinks null `
 -BillingDetails null `
 -CustCurrency null `
 -CustCurrencySymbol null `
 -Package null `
 -ExtraInfoTables null `
 -FilterFirewall null
```

- Convert the resource to JSON
```powershell
$GetScrubIpDetails200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

