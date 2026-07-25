# DomainOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**r#type** | Option<**Type**> | Order type. (enum: register, transfer) | [optional][default to Register]
**coupon** | Option<**String**> | Coupon code (addDomain only). | [optional][default to ]
**whois_privacy** | Option<**WhoisPrivacy**> | Set to \"enable\" to add Whois privacy (addDomain only). (enum: enable, disable) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


