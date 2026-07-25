# DomainOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | [**TypeEnum**](#TypeEnum) | Order type. |  [optional]
**coupon** | **String** | Coupon code (addDomain only). |  [optional]
**whoisPrivacy** | [**WhoisPrivacyEnum**](#WhoisPrivacyEnum) | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). |  [optional]

<a name="TypeEnum"></a>
## Enum: TypeEnum
Name | Value
---- | -----
REGISTER | &quot;register&quot;
TRANSFER | &quot;transfer&quot;

<a name="WhoisPrivacyEnum"></a>
## Enum: WhoisPrivacyEnum
Name | Value
---- | -----
ENABLE | &quot;enable&quot;
DISABLE | &quot;disable&quot;
