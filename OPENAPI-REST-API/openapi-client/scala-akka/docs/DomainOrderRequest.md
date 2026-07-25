

# DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**`type`** | [**`Type`**](#`Type`) | Order type. |  [optional]
**coupon** | **String** | Coupon code (addDomain only). |  [optional]
**whois_privacy** | [**WhoisPrivacy**](#WhoisPrivacy) | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). |  [optional]


## Enum: `Type`
Allowed values: [register, transfer]



## Enum: WhoisPrivacy
Allowed values: [enable, disable]




