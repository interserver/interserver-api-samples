# WebsiteOrderPutRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **str** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**package_id** | **int** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | **str** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to '']
**period** | **int** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**coupon** | **str** | Coupon code. | [optional] [default to '']
**service_offer_id** | **int** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**script** | **int** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**comment** | **str** | Free-form note saved on the service row. | [optional] [default to '']
**register_domain** | **bool** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to False]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

