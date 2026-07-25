# interserverapi::DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **character** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | **character** | Order type. | [optional] [default to &quot;register&quot;] [Enum: [register, transfer]] 
**coupon** | **character** | Coupon code (addDomain only). | [optional] [default to &quot;&quot;] 
**whois_privacy** | **character** | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). | [optional] [Enum: [enable, disable]] 


