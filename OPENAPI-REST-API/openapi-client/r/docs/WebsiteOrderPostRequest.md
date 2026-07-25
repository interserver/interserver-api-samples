# interserverapi::WebsiteOrderPostRequest

request to place a webhosting order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **character** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**packageId** | **integer** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | **character** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to &quot;&quot;] 
**period** | **integer** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1] 
**coupon** | **character** | Coupon code. | [optional] [default to &quot;&quot;] 
**serviceOfferId** | **integer** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0] 
**script** | **integer** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0] 
**comment** | **character** | Free-form note saved on the service row. | [optional] [default to &quot;&quot;] 
**registerDomain** | **character** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to FALSE] 


