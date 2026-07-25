
# WebsiteOrderPutRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **hostname** | **kotlin.String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. |  |
| **packageId** | **kotlin.Int** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). |  |
| **rootpass** | **kotlin.String** | Control-panel admin password. If blank, a random password is generated server-side. |  [optional] |
| **period** | **kotlin.Int** | Billing cycle in months (1 / 6 / 12 / 24 / 36). |  [optional] |
| **coupon** | **kotlin.String** | Coupon code. |  [optional] |
| **serviceOfferId** | **kotlin.Int** | Promo bundle id from getNewWebsite.serviceOffers. |  [optional] |
| **script** | **kotlin.Int** | Auto-installer id (0 &#x3D; none). |  [optional] |
| **comment** | **kotlin.String** | Free-form note saved on the service row. |  [optional] |
| **registerDomain** | **kotlin.Boolean** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. |  [optional] |



