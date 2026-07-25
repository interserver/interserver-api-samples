# DomainLookupResponse

Availability, pricing, and order-field metadata for a domain lookup.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **boolean** | Whether the domain is available to register. | [optional] [default to undefined]
**premium** | **boolean** | Whether the domain is marked as premium by the registrar. | [optional] [default to undefined]
**website** | **boolean** | Indicates if the domain is already used by a website service. | [optional] [default to undefined]
**domain_service** | **boolean** | Indicates if the domain already exists as a domain service on the account. | [optional] [default to undefined]
**service** | **object** | Service catalog details for the domain\&#39;s TLD. | [optional] [default to undefined]
**whois_privacy** | **boolean** | Whether Whois privacy is available for the TLD. | [optional] [default to undefined]
**_new** | **string** | Calculated registration price, when available. | [optional] [default to undefined]
**renewal** | **string** | Calculated renewal price, when available. | [optional] [default to undefined]
**transfer** | **string** | Calculated transfer price, when available. | [optional] [default to undefined]
**fields** | **object** | Registrar field requirements for this domain/TLD. | [optional] [default to undefined]
**currencies** | **object** | Pricing information normalized to supported currencies. | [optional] [default to undefined]

## Example

```typescript
import { DomainLookupResponse } from '@interserver/myadmin-client';

const instance: DomainLookupResponse = {
    available,
    premium,
    website,
    domain_service,
    service,
    whois_privacy,
    _new,
    renewal,
    transfer,
    fields,
    currencies,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
