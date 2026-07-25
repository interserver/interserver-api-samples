# WebsiteServiceInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WebsiteId** | **String** | Website ID | [optional] 
**WebsiteServer** | **String** | Website server | [optional] 
**WebsiteType** | **String** | Website type | [optional] 
**WebsiteCurrency** | **String** | Currency of the website | [optional] 
**WebsiteOrderDate** | **String** | Order date of the website | [optional] 
**WebsiteCustid** | **String** | Customer ID of the website | [optional] 
**WebsiteIp** | **String** | IP address of the website | [optional] 
**WebsiteStatus** | **String** | Status of the website | [optional] 
**WebsiteInvoice** | **String** | Invoice of the website | [optional] 
**WebsiteCoupon** | **String** | Coupon for the website | [optional] 
**WebsiteExtra** | **String** | Extra information in JSON format for the website | [optional] 
**WebsiteHostname** | **String** | Hostname of the website | [optional] 
**WebsiteComment** | **String** | Comment for the website | [optional] 
**WebsiteUsername** | **String** | Username for the website | [optional] 
**WebsiteServerStatus** | **String** | Server status of the website | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsiteServiceInfo = Initialize-InterserverApiWebsiteServiceInfo  -WebsiteId 1196829 `
 -WebsiteServer 543 `
 -WebsiteType 11363 `
 -WebsiteCurrency USD `
 -WebsiteOrderDate 2023-03-16T22:51:54.000Z `
 -WebsiteCustid 85872 `
 -WebsiteIp 74.50.80.15 `
 -WebsiteStatus active `
 -WebsiteInvoice 20261994 `
 -WebsiteCoupon 1690 `
 -WebsiteExtra [] `
 -WebsiteHostname vintagevultures.com `
 -WebsiteComment null `
 -WebsiteUsername vintagev `
 -WebsiteServerStatus null
```

- Convert the resource to JSON
```powershell
$WebsiteServiceInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

