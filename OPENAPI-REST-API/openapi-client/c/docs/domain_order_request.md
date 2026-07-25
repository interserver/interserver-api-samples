# domain_order_request_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **char \*** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | **interserver_management_api_domain_order_request_TYPE_e** | Order type. | [optional] [default to 'register']
**coupon** | **char \*** | Coupon code (addDomain only). | [optional] [default to '']
**whois_privacy** | **interserver_management_api_domain_order_request_WHOISPRIVACY_e** | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


