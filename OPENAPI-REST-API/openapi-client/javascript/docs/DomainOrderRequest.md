# InterserverApiClient.DomainOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**type** | **String** | Order type. | [optional] [default to &#39;register&#39;]
**coupon** | **String** | Coupon code (addDomain only). | [optional] [default to &#39;&#39;]
**whois_privacy** | **String** | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). | [optional] 



## Enum: TypeEnum


* `register` (value: `"register"`)

* `transfer` (value: `"transfer"`)

* `unknown_default_open_api` (value: `"unknown_default_open_api"`)





## Enum: WhoisPrivacyEnum


* `enable` (value: `"enable"`)

* `disable` (value: `"disable"`)

* `unknown_default_open_api` (value: `"unknown_default_open_api"`)




