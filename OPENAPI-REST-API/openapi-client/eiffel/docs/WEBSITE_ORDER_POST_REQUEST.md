# WEBSITE_ORDER_POST_REQUEST

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | [**STRING_32**](STRING_32.md) | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | [default to null]
**package_id** | **INTEGER_32** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | [default to null]
**rootpass** | [**STRING_32**](STRING_32.md) | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to ]
**period** | **INTEGER_32** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**coupon** | [**STRING_32**](STRING_32.md) | Coupon code. | [optional] [default to ]
**service_offer_id** | **INTEGER_32** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**script** | **INTEGER_32** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**comment** | [**STRING_32**](STRING_32.md) | Free-form note saved on the service row. | [optional] [default to ]
**register_domain** | **BOOLEAN** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


