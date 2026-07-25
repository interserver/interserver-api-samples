

# WebsiteOrderPutRequest

request to validate a webhosting order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**packageId** | **Int** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | **String** | Control-panel admin password. If blank, a random password is generated server-side. |  [optional]
**period** | **Int** | Billing cycle in months (1 / 6 / 12 / 24 / 36). |  [optional]
**coupon** | **String** | Coupon code. |  [optional]
**serviceOfferId** | **Int** | Promo bundle id from getNewWebsite.serviceOffers. |  [optional]
**script** | **Int** | Auto-installer id (0 &#x3D; none). |  [optional]
**comment** | **String** | Free-form note saved on the service row. |  [optional]
**registerDomain** | **Boolean** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. |  [optional]



