# WebsiteOrderPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | [**kotlin.String**](.md) | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**packageId** | [**kotlin.Int**](.md) | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | [**kotlin.String**](.md) | Control-panel admin password. If blank, a random password is generated server-side. |  [optional]
**period** | [**kotlin.Int**](.md) | Billing cycle in months (1 / 6 / 12 / 24 / 36). |  [optional]
**coupon** | [**kotlin.String**](.md) | Coupon code. |  [optional]
**serviceOfferId** | [**kotlin.Int**](.md) | Promo bundle id from getNewWebsite.serviceOffers. |  [optional]
**script** | [**kotlin.Int**](.md) | Auto-installer id (0 &#x3D; none). |  [optional]
**comment** | [**kotlin.String**](.md) | Free-form note saved on the service row. |  [optional]
**registerDomain** | [**kotlin.Boolean**](.md) | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. |  [optional]
