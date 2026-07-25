# DomainServiceType

Service type definition for a domain registration, including name, pricing, and category.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_id** | **string** | Service type ID. | [optional] [default to undefined]
**services_name** | **string** | Service type name (e.g., .com Registration). | [optional] [default to undefined]
**services_cost** | **string** | Service cost per billing period. | [optional] [default to undefined]
**services_category** | **string** | Service category ID. | [optional] [default to undefined]
**services_buyable** | **string** | Whether this service type is available for purchase. | [optional] [default to undefined]
**services_type** | **string** | Internal service type identifier. | [optional] [default to undefined]
**services_field1** | **string** | TLD or first configurable field for the service type. | [optional] [default to undefined]
**services_field2** | **string** | Second configurable field for the service type. | [optional] [default to undefined]
**services_module** | **string** | Backend module handling this service type. | [optional] [default to undefined]

## Example

```typescript
import { DomainServiceType } from '@interserver/myadmin-client';

const instance: DomainServiceType = {
    services_id,
    services_name,
    services_cost,
    services_category,
    services_buyable,
    services_type,
    services_field1,
    services_field2,
    services_module,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
