# WebsiteOrderPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **string** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | [default to null]
**PackageId** | **int32** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | [default to null]
**Rootpass** | **string** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] 
**Period** | **int32** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**Coupon** | **string** | Coupon code. | [optional] 
**ServiceOfferId** | **int32** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**Script** | **int32** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**Comment** | **string** | Free-form note saved on the service row. | [optional] 
**RegisterDomain** | **bool** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

