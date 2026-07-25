

# DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). |  |
|**type** | [**TypeEnum**](#TypeEnum) | Order type. |  [optional] |
|**coupon** | **String** | Coupon code (addDomain only). |  [optional] |
|**whoisPrivacy** | [**WhoisPrivacyEnum**](#WhoisPrivacyEnum) | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| register | &quot;register&quot; |
| transfer | &quot;transfer&quot; |



## Enum: WhoisPrivacyEnum

| Name | Value |
|---- | -----|
| enable | &quot;enable&quot; |
| disable | &quot;disable&quot; |


## Implemented Interfaces

* Serializable


