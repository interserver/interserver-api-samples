# GetScrubIpDetails200ResponseServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScrubIpId** | **String** |  | [optional] 
**ScrubIpType** | **String** |  | [optional] 
**ScrubIpCustid** | **String** |  | [optional] 
**ScrubIpOrderDate** | **String** |  | [optional] 
**ScrubIpIp** | **String** |  | [optional] 
**ScrubIpServiceId** | **String** |  | [optional] 
**ScrubIpServiceModule** | **String** |  | [optional] 
**ScrubIpStatus** | **String** |  | [optional] 
**ScrubIpInvoice** | **String** |  | [optional] 
**ScrubIpCurrency** | **String** |  | [optional] 
**ScrubIpCoupon** | **String** |  | [optional] 
**ScrubIpComment** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetScrubIpDetails200ResponseServiceInfo = Initialize-InterserverApiGetScrubIpDetails200ResponseServiceInfo  -ScrubIpId null `
 -ScrubIpType null `
 -ScrubIpCustid null `
 -ScrubIpOrderDate null `
 -ScrubIpIp null `
 -ScrubIpServiceId null `
 -ScrubIpServiceModule null `
 -ScrubIpStatus null `
 -ScrubIpInvoice null `
 -ScrubIpCurrency null `
 -ScrubIpCoupon null `
 -ScrubIpComment null
```

- Convert the resource to JSON
```powershell
$GetScrubIpDetails200ResponseServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

