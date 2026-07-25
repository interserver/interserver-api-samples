# WebsitesOrderServiceOffer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceOfferId** | **String** | The ID of the service offer. | 
**ServiceId** | **String** | The ID of the associated service. | 
**IntroCost** | **String** | The introductory cost of the service offer. | 
**RenewalCost** | **String** | The renewal cost of the service offer. | 
**IntroFrequency** | **String** | The introductory frequency of the service offer. | 
**RenewalFrequency** | **String** | The renewal frequency of the service offer. | 
**AllowCoupon** | **String** | Indicates if coupons are allowed (1 for yes, 0 for no). | 
**ServiceModule** | **String** | The module of the service offer. | 
**CreatedAt** | **String** | The creation timestamp of the service offer. | 
**UpdatedAt** | **String** | The update timestamp of the service offer. | [optional] 
**DeletedAt** | **String** | The deletion timestamp of the service offer. | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsitesOrderServiceOffer = Initialize-InterserverApiWebsitesOrderServiceOffer  -ServiceOfferId 136 `
 -ServiceId 1026 `
 -IntroCost 96.00 `
 -RenewalCost 96.00 `
 -IntroFrequency 12 `
 -RenewalFrequency 12 `
 -AllowCoupon 1 `
 -ServiceModule webhosting `
 -CreatedAt 2023-01-25T14:50:55.000Z `
 -UpdatedAt null `
 -DeletedAt null
```

- Convert the resource to JSON
```powershell
$WebsitesOrderServiceOffer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

