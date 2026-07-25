
# DomainOrderRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **hostname** | **kotlin.String** | Fully-qualified domain to register or transfer (e.g. example.com). |  |
| **type** | [**inline**](#Type) | Order type. |  [optional] |
| **coupon** | **kotlin.String** | Coupon code (addDomain only). |  [optional] |
| **whoisPrivacy** | [**inline**](#WhoisPrivacy) | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). |  [optional] |


<a id="Type"></a>
## Enum: type
| Name | Value |
| ---- | ----- |
| type | register, transfer |


<a id="WhoisPrivacy"></a>
## Enum: whois_privacy
| Name | Value |
| ---- | ----- |
| whoisPrivacy | enable, disable |



