# WebsitesOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Step** | **String** | Step description | 
**Website** | **String** | Website description | 
**Period** | **Int32** | Period description | 
**ServiceOfferId** | **Int32** | Service offer ID description | 
**Packages** | [**WebsitesOrderPackages**](WebsitesOrderPackages.md) |  | 
**EnableDomainRegistering** | **Boolean** | Enable domain registering description | 
**JsonServices** | [**WebsitesOrderJsonServices**](WebsitesOrderJsonServices.md) |  | 
**JsonServiceOffers** | [**WebsitesOrderJsonServiceOffers**](WebsitesOrderJsonServiceOffers.md) |  | 
**ServiceTypes** | [**WebsitesOrderServiceTypes**](WebsitesOrderServiceTypes.md) |  | 
**ServiceOffers** | [**WebsitesOrderServiceOffers**](WebsitesOrderServiceOffers.md) |  | 
**Packges** | [**WebsitesOrderPackges**](WebsitesOrderPackges.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebsitesOrder = Initialize-InterserverApiWebsitesOrder  -Step order_form `
 -Website  `
 -Period 1 `
 -ServiceOfferId 0 `
 -Packages null `
 -EnableDomainRegistering false `
 -JsonServices null `
 -JsonServiceOffers null `
 -ServiceTypes null `
 -ServiceOffers null `
 -Packges null
```

- Convert the resource to JSON
```powershell
$WebsitesOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

