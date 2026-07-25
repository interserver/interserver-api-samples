# WebsitesOrderJsonServiceOffersItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceOfferId** | **String** | Service offer ID | [optional] 
**ServiceId** | **String** | Service ID | [optional] 
**IntroCost** | **Int32** | Introductory cost | [optional] 
**RenewalCost** | **Int32** | Renewal cost | [optional] 
**IntroFrequency** | **String** | Introductory frequency | [optional] 
**RenewalFrequency** | **String** | Renewal frequency | [optional] 
**AllowCoupon** | **String** | Allow coupon | [optional] 
**ServiceModule** | **String** | Service module | [optional] 
**CreatedAt** | **String** | Creation date | [optional] 
**UpdatedAt** | **String** | Update date | [optional] 
**DeletedAt** | **String** | Deletion date | [optional] 
**CurrencySymbol** | **String** | Currency symbol | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsitesOrderJsonServiceOffersItem = Initialize-InterserverApiWebsitesOrderJsonServiceOffersItem  -ServiceOfferId 136 `
 -ServiceId 1026 `
 -IntroCost 96 `
 -RenewalCost 96 `
 -IntroFrequency 12 `
 -RenewalFrequency 12 `
 -AllowCoupon 1 `
 -ServiceModule webhosting `
 -CreatedAt 2023-01-25T14:50:55.000Z `
 -UpdatedAt null `
 -DeletedAt null `
 -CurrencySymbol $
```

- Convert the resource to JSON
```powershell
$WebsitesOrderJsonServiceOffersItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

