# DomainOrderServices10001

Example schema for a domain service catalog entry.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **string** | Service ID | [optional] [default to undefined]
**services_name** | **string** | Service Name | [optional] [default to undefined]
**services_cost** | **string** | Service Cost | [optional] [default to undefined]
**services_currency** | **string** | Currency of Service Cost | [optional] [default to undefined]
**services_category** | **string** | Service Category | [optional] [default to undefined]
**services_buyable** | **string** | Buyable flag for Service | [optional] [default to undefined]
**services_type** | **string** | Service Type | [optional] [default to undefined]
**services_field1** | **string** | Field 1 of Service | [optional] [default to undefined]
**services_field2** | **string** | Field 2 of Service | [optional] [default to undefined]
**services_module** | **string** | Module of Service | [optional] [default to undefined]
**services_hidden** | **string** | Hidden flag for Service | [optional] [default to undefined]

## Example

```typescript
import { DomainOrderServices10001 } from '@interserver/myadmin-client';

const instance: DomainOrderServices10001 = {
    services_id,
    services_name,
    services_cost,
    services_currency,
    services_category,
    services_buyable,
    services_type,
    services_field1,
    services_field2,
    services_module,
    services_hidden,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
