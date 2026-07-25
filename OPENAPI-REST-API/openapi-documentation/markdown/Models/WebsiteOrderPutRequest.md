# WebsiteOrderPutRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **hostname** | **String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | [default to null] |
| **packageId** | **Integer** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | [default to null] |
| **rootpass** | **String** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to ] |
| **period** | **Integer** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1] |
| **coupon** | **String** | Coupon code. | [optional] [default to ] |
| **serviceOfferId** | **Integer** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0] |
| **script** | **Integer** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0] |
| **comment** | **String** | Free-form note saved on the service row. | [optional] [default to ] |
| **registerDomain** | **Boolean** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to false] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

