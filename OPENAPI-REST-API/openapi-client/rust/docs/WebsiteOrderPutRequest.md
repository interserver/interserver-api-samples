# WebsiteOrderPutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**package_id** | **i32** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**rootpass** | Option<**String**> | Control-panel admin password. If blank, a random password is generated server-side. | [optional][default to ]
**period** | Option<**i32**> | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional][default to 1]
**coupon** | Option<**String**> | Coupon code. | [optional][default to ]
**service_offer_id** | Option<**i32**> | Promo bundle id from getNewWebsite.serviceOffers. | [optional][default to 0]
**script** | Option<**i32**> | Auto-installer id (0 = none). | [optional][default to 0]
**comment** | Option<**String**> | Free-form note saved on the service row. | [optional][default to ]
**register_domain** | Option<**bool**> | When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. | [optional][default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


