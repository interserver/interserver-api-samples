# IO.Swagger.Model.WebsiteOrderPutRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **string** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**PackageId** | **int?** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**Rootpass** | **string** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to ""]
**Period** | **int?** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**Coupon** | **string** | Coupon code. | [optional] [default to ""]
**ServiceOfferId** | **int?** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**Script** | **int?** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**Comment** | **string** | Free-form note saved on the service row. | [optional] [default to ""]
**RegisterDomain** | **bool?** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

