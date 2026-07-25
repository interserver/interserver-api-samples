# DomainOrderRequest

Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **string** | Fully-qualified domain to register or transfer (e.g. example.com). | [default to undefined]
**type** | **string** | Order type. | [optional] [default to TypeEnum_Register]
**coupon** | **string** | Coupon code (addDomain only). | [optional] [default to '']
**whois_privacy** | **string** | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). | [optional] [default to undefined]

## Example

```typescript
import { DomainOrderRequest } from '@interserver/myadmin-client';

const instance: DomainOrderRequest = {
    hostname,
    type,
    coupon,
    whois_privacy,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
