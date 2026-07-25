# DomainOrder

Ordering metadata for domain registration and transfers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**whoisPrivacyCost** | **string** | Cost of Whois Privacy | [optional] [default to undefined]
**services** | [**DomainOrderServices**](DomainOrderServices.md) |  | [optional] [default to undefined]
**tldServices** | **object** | Map of TLDs to domain service IDs. | [optional] [default to undefined]

## Example

```typescript
import { DomainOrder } from '@interserver/myadmin-client';

const instance: DomainOrder = {
    whoisPrivacyCost,
    services,
    tldServices,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
