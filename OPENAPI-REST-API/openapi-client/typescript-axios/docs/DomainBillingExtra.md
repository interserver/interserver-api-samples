# DomainBillingExtra

Extended billing context for a domain including registrar order details and contact info.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | [**DomainOrderResponse**](DomainOrderResponse.md) |  | [optional] [default to undefined]
**order_id** | **string** |  | [optional] [default to undefined]
**domain_id** | **string** |  | [optional] [default to undefined]
**provProcessPending** | [**DomainProvProcessPending**](DomainProvProcessPending.md) |  | [optional] [default to undefined]
**email** | **string** |  | [optional] [default to undefined]
**firstname** | **string** |  | [optional] [default to undefined]
**lastname** | **string** |  | [optional] [default to undefined]
**company** | **string** |  | [optional] [default to undefined]
**address** | **string** |  | [optional] [default to undefined]
**address2** | **string** |  | [optional] [default to undefined]
**address3** | **string** |  | [optional] [default to undefined]
**city** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**zip** | **string** |  | [optional] [default to undefined]
**country** | **string** |  | [optional] [default to undefined]
**phone** | **string** |  | [optional] [default to undefined]
**fax** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DomainBillingExtra } from '@interserver/myadmin-client';

const instance: DomainBillingExtra = {
    order,
    order_id,
    domain_id,
    provProcessPending,
    email,
    firstname,
    lastname,
    company,
    address,
    address2,
    address3,
    city,
    state,
    zip,
    country,
    phone,
    fax,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
