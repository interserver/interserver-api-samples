

# DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

The class is defined in **[DomainOrderRequest.java](../../src/main/java/org/openapitools/model/DomainOrderRequest.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | `String` | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | [**TypeEnum**](#TypeEnum) | Order type. |  [optional property]
**coupon** | `String` | Coupon code (addDomain only). |  [optional property]
**whoisPrivacy** | [**WhoisPrivacyEnum**](#WhoisPrivacyEnum) | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). |  [optional property]


## TypeEnum

Name | Value
---- | -----
REGISTER | `"register"`
TRANSFER | `"transfer"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`


## WhoisPrivacyEnum

Name | Value
---- | -----
ENABLE | `"enable"`
DISABLE | `"disable"`
UNKNOWN_DEFAULT_OPEN_API | `"unknown_default_open_api"`


